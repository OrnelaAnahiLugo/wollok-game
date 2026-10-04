
# Escapando de Scream

Juego inspirado en Pac-Man hecho con Wollok Game. La protagonista es Vicky, que debe moverse por un laberinto de escape room mientras evita a los Scream.

## Historia

Vicky es una chica apasionada por los escape rooms. Un dia decide ir a uno con tematica de Scream, pensando que iba a ser una experiencia divertida y desafiante.

El problema es que Vicky se asusta tanto que, cada vez que se choca con un Scream, su primera reaccion es querer golpearlo. Pero eso esta totalmente PROHIBIDO en el escape room, asi que si Vicky toca a un Scream pierde y el juego se reinicia.

Durante el recorrido, Vicky se va a encontrar con distintos objetos del escape room: candados, candados con llave, candados con clave, llaves y otros elementos que le van a dar mas experiencia para poder avanzar.

## Como correr el proyecto

Requisitos:

- Tener instalado Node.js.
- Tener instalado Wollok CLI.
- Ejecutar los comandos desde la carpeta del proyecto.

Para correr el juego:

```bash
npm start
```

El juego queda disponible en:

```text
http://localhost:3000
```

Tambien se puede correr Wollok directamente con:

```bash
npm run game
```

`npm start` usa un watcher: cuando se modifican archivos `.wlk` o `.wpgm`, vuelve a ejecutar el juego automaticamente.

## Herramientas usadas

- Wollok
- Wollok Game
- Node.js
- npm
- Assets propios/seleccionados para Vicky, Scream, mapa, llaves, candados y puntos

## Controles

- Flecha arriba: mover a Vicky hacia arriba
- Flecha abajo: mover a Vicky hacia abajo
- Flecha derecha: mover a Vicky hacia la derecha
- Flecha izquierda: mover a Vicky hacia la izquierda

## Funcionalidades actuales

- Mapa tipo laberinto.
- Movimiento de Vicky con teclado.
- Paredes que bloquean el movimiento.
- Fantasmas/Scream que se mueven automaticamente.
- Si Vicky choca con un Scream, el juego se reinicia.
- Objetos visuales disponibles en assets: puntos, llaves y candados.

## Funcionalidades pendientes

- Comer frutas y sumar puntos.
- Implementar todo el sistema de puntaje.
- Comer los puntitos del mapa, tambien conocidos como puntos o pellets en Pac-Man.
- Hacer que los puntos desaparezcan al ser comidos.
- Definir condiciones de victoria.
- Usar los distintos tipos de candados como parte de la logica del escape room.
- Implementar llaves, candados con llave, candados con clave y sus interacciones.
- Mejorar el comportamiento de los Scream para que persigan o patrullen con mas estrategia.
- Agregar niveles o dificultad progresiva.

## Estructura del proyecto

- `src/main.wpgm`: programa principal del juego.
- `src/vicky.wlk`: definicion de Vicky.
- `src/enemigo.wlk`: definicion de los Scream.
- `src/personaje.wlk`: comportamiento comun de personajes.
- `src/pared.wlk`: paredes del laberinto.
- `src/controladorEnemigo.wlk`: creacion y movimiento de enemigos.
- `src/reseteador.wlk`: reinicio del juego.
- `config/paredesHandler.wlk`: carga de paredes del mapa.
- `config/colisiones.wlk`: configuracion de colisiones.
- `config/direccion.wlk`: direcciones de movimiento.
- `assets/`: imagenes usadas por el juego.
