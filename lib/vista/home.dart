import 'package:flutter/material.dart';

import '../componentes/app_bar_component.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}


class _HomePage extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String dropdownValue;
    List<String> list = ['a', 'b', 'c'];

    return Scaffold(
    appBar: MyAppBar(title: 'Cubit CRUD'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            DropdownButton<String>(
              value: list[0],
              onChanged: (String? newValue) {
                // Código que se ejecuta cuando se selecciona una opción del menú
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

          ElevatedButton(
            onPressed: () {
              // Código que se ejecuta cuando se presiona el botón
            },
            child: Text(
              'Agregar',
              style: TextStyle(fontSize: 18),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              // Código que se ejecuta cuando se presiona el botón
            },
            child: Text(
              'Editar',
              style: TextStyle(fontSize: 18),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              // Código que se ejecuta cuando se presiona el botón
            },
            child: Text(
              'Eliminar',
              style: TextStyle(fontSize: 18),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
          )




          ],
        ),
      ),
    );
  }
}
