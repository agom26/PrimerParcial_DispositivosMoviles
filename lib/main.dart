// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Fondo rojo
              Container(
                color: Colors.lightBlue[100],
              ),
              // Tarjeta
              const MyCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  _MyCardState createState() {
    return _MyCardState();
  }
}

class _MyCardState extends State<MyCard> {
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Elevación de la tarjeta
      child: Container(
        width: 360, // Ancho de la tarjeta
        height: 640, //Ancho de la tarjeta
        padding: const EdgeInsets.all(16), // Espaciado interior
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¿Cuánto te gustaría pagar por hora?',
              style: TextStyle(fontSize: 16), // Tamaño de fuente más grande
            ),
            const SizedBox(
              height: 20,
            ),
            CupertinoSlider(
              value: sliderValue,
              min: 0,
              max: 250,
              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue;
                });
              },
            ),
            const SizedBox(
                height: 28), // Espacio entre el slider y el siguiente texto
            Text(
              'Q${sliderValue.toStringAsFixed(1)}',
              style:
                  const TextStyle(fontSize: 16), // Tamaño de fuente más pequeño
            ),
            const SizedBox(height: 50), // Espacio entre el texto y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 188,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción a realizar cuando se presiona el botón
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Siguiente   '),
                        Image.network(
                          "huellaPNG.png",
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30), // Espacio entre los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 05,
                ),
                SizedBox(
                  width: 132,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "huellaPNG.png",
                          width: 20,
                          height: 20,
                        ),
                        const Text('  Atrás'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
