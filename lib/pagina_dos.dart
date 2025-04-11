import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  DosState createState() => DosState();
}

class DosState extends State<PantallaDos> {
  bool _isFlat = true;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff743afb),
        title: const Text(
          'Pantalla dos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white, // Fondo blanco para toda la pantalla
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedPhysicalModel(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  elevation: _isFlat ? 0 : 6.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Colors.black,
                  color: Colors.white, // Color del widget interno (no el fondo)
                  child: const SizedBox(
                    height: 120.0,
                    width: 120.0,
                    child: Icon(Icons.android_outlined),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('Clic para añadir movimiento',
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    setState(() {
                      _isFlat = !_isFlat;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: const Text('Pantalla inicial',
                  style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
