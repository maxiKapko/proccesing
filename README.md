# TP 3: Visualización y transformaciones
## INTRODUCCIÓN
La siguiente escena está armada en base a todos los conceptos vistos hasta el momento:
- Utilización de los espacios
- Manipulación de píxeles
- Armado de vértices
- Uso de objetos externos (OBJ) y su archivo de materiales
- Transformaciones del espacio 3D
- Cámaras
- Uso de interacciones básicas: teclado y mouse

La actividad se divide en 2 etapas:
- La etapa 1 que tiene dos partes 00 y 01 donde básicamente la idea es completar código en base a un sketch de Processing pre armado: centrarse en cómo usar la interacción (por el momento el teclado) y ubicarse en el espacio 3D
- Incorporar una cámara propia con movimiento en base al mouse

La idea es que completes el código en las partes que se indica de la siguiente manera:

``// *** COMPLETAR ACÁ ***
// -- tú código para armar la grilla
// *** FIN ***``

** En algunos casos se dejan ciertos tips **

## PARTE 00 - Mover el cubo

Se busca completar el código que está en el Sketch: dados_parte_00 para que:
- Se active y desactive una grilla que corte al cubo en la mitad y que permita visualizar el efecto de rotación de forma más ordenada. Esta grilla se invoca con dibujarGrilla(espacio) - espacio es un entero que determina el espacio de grillado. La función ya está armada, solamente es necesario completar el código que dibuja las líneas verticales y horizontales teniendo en cuenta ese espacio.

![parte-00-1](https://user-images.githubusercontent.com/13876286/133911230-3c7e7786-7092-4513-85c2-a5db999d4f62.gif)


- Se modifiquen los ángulos de rotación y se aplique la rotación al cubo en función de las teclas presionadas.

![parte-00-2](https://user-images.githubusercontent.com/13876286/133911257-8ec19404-ed64-4f85-a79b-dbc5cb47a2e4.gif)


## PARTE 01 - Sumar una cámara

** IMPORTANTE: ** Hacer la parte 01 incorporando al código que está en el Sketch: dados_parte_01 lo que se completó en la Parte 00

En ese Sketch se agrega una cámara y se busca completar el código para:
- Calcular el ángulo de rotación de la cámara en función del uso del mouse


![parte-00-3](https://user-images.githubusercontent.com/13876286/133911294-5293ee6a-a8b1-433d-8cb0-3d626246f370.gif)


