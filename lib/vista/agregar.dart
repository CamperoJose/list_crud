import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../componentes/app_bar_component.dart';
import '../lb/list_cubit.dart';
import '../model/list.dart';

class AddPage extends StatelessWidget {
  final ListCubit myCubit;
  final myController = TextEditingController();


  AddPage({required this.myCubit});


  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.deepPurple.shade100,
    appBar: MyAppBar(title: 'Agregar Elemento'),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: 'Escribe aquí',
              ),
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
                    myCubit.CubitAddElement(myController.text);
                    Navigator.pop(context, true);
                  },
                  child: Text(
                    'Agregar',
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
                        MaterialStateProperty.all<Color>(Colors.green),
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
