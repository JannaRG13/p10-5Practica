import 'package:flutter/material.dart';

void main() => runApp(MiContenedor());

class MiContenedor extends StatelessWidget {
  const MiContenedor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ramirez G 22308051281287"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Color(0xff078244), fontSize: 25),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Stack(
            children: [
              // Contenedor para la sombra superior-izquierda (azul)
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 200, // Mitad del ancho del contenedor principal
                  height: 200, // Mitad del alto del contenedor principal
                  decoration: BoxDecoration(
                    color: Colors.white, // Color de fondo
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          20), // Borde redondeado superior-izquierdo
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.green.withOpacity(0.9), // Color de la sombra
                        offset: Offset(
                            -5, -5), // Desplazamiento hacia arriba-izquierda
                        blurRadius: 10, // Difuminado de la sombra
                        spreadRadius: 5, // Extensión de la sombra
                      ),
                    ],
                  ),
                ),
              ),
              // Contenedor para la sombra inferior-derecha (rojo)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 193, // Mitad del ancho del contenedor principal
                  height: 193, // Mitad del alto del contenedor principal
                  decoration: BoxDecoration(
                    color: Colors.white, // Color de fondo
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                          20), // Borde redondeado inferior-derecho
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.blue.withOpacity(0.9), // Color de la sombra
                        offset:
                            Offset(5, 5), // Desplazamiento hacia abajo-derecha
                        blurRadius: 10, // Difuminado de la sombra
                        spreadRadius: 5, // Extensión de la sombra
                      ),
                    ],
                  ),
                ),
              ),
              // Contenedor principal (vacío)
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white, // Color de fondo
                  borderRadius: BorderRadius.circular(20), // Bordes redondeados
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
