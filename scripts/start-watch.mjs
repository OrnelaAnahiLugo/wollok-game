import { spawn } from "node:child_process";
import { readdirSync, statSync } from "node:fs";
import { extname, join } from "node:path";

const watchedFolders = ["src", "config"];
const watchedExtensions = new Set([".wlk", ".wpgm"]);
let currentProcess;
let restartTimer;
let lastSnapshot = snapshotWatchedFiles();

function snapshotWatchedFiles() {
  const files = new Map();

  for (const folder of watchedFolders) {
    for (const file of readdirSync(folder)) {
      const path = join(folder, file);
      const stats = statSync(path);

      if (stats.isFile() && watchedExtensions.has(extname(path))) {
        files.set(path, stats.mtimeMs);
      }
    }
  }

  return files;
}

function changedSinceLastSnapshot() {
  const nextSnapshot = snapshotWatchedFiles();
  let changed = nextSnapshot.size !== lastSnapshot.size;

  for (const [path, mtimeMs] of nextSnapshot) {
    if (lastSnapshot.get(path) !== mtimeMs) {
      changed = true;
      break;
    }
  }

  lastSnapshot = nextSnapshot;

  return changed;
}

function runGame() {
  currentProcess = spawn("wollok", ["run", "src.main.PacvickyGame"], {
    stdio: "inherit",
  });

  currentProcess.on("exit", () => {
    currentProcess = undefined;
  });
}

function restartGame() {
  clearTimeout(restartTimer);

  restartTimer = setTimeout(() => {
    if (!currentProcess || currentProcess.killed) {
      runGame();
      return;
    }

    currentProcess.once("exit", runGame);
    currentProcess.kill();
  }, 150);
}

setInterval(() => {
  try {
    if (changedSinceLastSnapshot()) {
      restartGame();
    }
  } catch (error) {
    console.error("No pude revisar cambios:", error.message);
  }
}, 500);

function finish() {
  if (currentProcess && !currentProcess.killed) {
    currentProcess.kill();
  }

  process.exit();
}

process.on("SIGINT", finish);
process.on("SIGTERM", finish);

runGame();
