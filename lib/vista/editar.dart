import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../componentes/app_bar_component.dart';
import '../lb/list_cubit.dart';
import '../model/list.dart';

class EditPage extends StatelessWidget {
  final ListCubit myCubit;
  final String previousValue;

  EditPage({required this.myCubit, required this.previousValue});

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController(text: previousValue);
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: MyAppBar(title: 'Eitar Elemento'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200, // ajusta el ancho aquí

              child: TextField(
                controller: myController, // Establecer el controlador
              ),
            ),

            SizedBox(height: 20),

            Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print("Texto a mostrar: ${myController.text}");
                    myCubit.cubitEditElement(previousValue, myController.text);
                    Navigator.pop(context, true);
                  },
                  
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(Size(120, 35)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color.fromARGB(255, 245, 201, 23)),
                  ),
                  child: const Text(
                    'Modificar',
                    style: TextStyle(fontSize: 18),
                  ),
                  
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(Size(120, 35)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color.fromARGB(255, 168, 19, 19)),
                  ),
                ),
              ],
            ),
          ),
            

          ],
        ),
      ),
    );
  }
}
