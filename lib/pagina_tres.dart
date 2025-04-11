import 'package:flutter/material.dart';

bool selected = false;

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff743afb),
        title: const Text(
          'Pantalla tres',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Mostrar pantalla de diálogo',
                  style: TextStyle(fontSize: 23)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cerrar',
                            style: TextStyle(fontSize: 15)),
                      ),
                    ],
                    title: const Text('Pantalla de diálogo'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('Esta es una pantalla de diálogo',
                        style: TextStyle(fontSize: 20)),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: const Text('Volver a pantalla inicial',
                  style: TextStyle(fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }
}
