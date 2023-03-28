import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_crud/vista/home.dart';

import 'lb/delete_cubit.dart';
import 'lb/list_cubit.dart';

void main() => runApp(MyApp());

MyApp myApp = MyApp();

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      home: BlocProvider(
        create: (context) => ListCubit(),
        child: HomePage(),
      ),
    );
  }
}
