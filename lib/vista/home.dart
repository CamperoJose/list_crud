import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../componentes/app_bar_component.dart';
import '../lb/list_cubit.dart';
import '../lb/list_cubit.dart';
import '../model/list.dart';
import 'agregar.dart';
import 'editar.dart';

class HomePage extends StatelessWidget {
  final myCubit = ListCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: MyAppBar(title: 'Cubit CRUD'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<ListCubit, int>(
              builder: (context, state) {
                return DropdownButton<String>(
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    selectedValue = newValue!;
                    BlocProvider.of<ListCubit>(context).CubitList();
                  },
                  items: listedElements
                      .getList()
                      .map<DropdownMenuItem<String>>((String selectedValue) {
                    return DropdownMenuItem<String>(
                      value: selectedValue,
                      child: Text(selectedValue, style: TextStyle(fontSize: 18),),
                    );
                  }).toList(),
                );
              },
            ),


            ElevatedButton(
              
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddPage(myCubit: myCubit)),
                      
                );

                if (result == true) {
                  selectedValue = listedElements.firstElement();
                  BlocProvider.of<ListCubit>(context).CubitList();
                }
                
              },
              child: Text('Agregar',style: TextStyle(fontSize: 18),),
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



            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditPage(myCubit: myCubit, previousValue: selectedValue)),
                );

                if (result == true) {
                  BlocProvider.of<ListCubit>(context).CubitList();
                }
                
              },
              child: Text(
                'Editar',
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
                    MaterialStateProperty.all<Color>(Color.fromARGB(255, 245, 201, 23)),
              ),
            ),





            ElevatedButton(
              onPressed: () {
                BlocProvider.of<ListCubit>(context)
                    .CubitDeleteElement(selectedValue);
                selectedValue = listedElements.firstElement();
              },
              child: const Text(
                'Eliminar',
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
            )
          ],
        ),
      ),
    );
  }
}
