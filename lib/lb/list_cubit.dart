import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/list.dart';


class ListCubit extends Cubit<int> {
  ListCubit() : super(0);

  void cubitAddElement(text){
    listedElements.addElement(text);
    selectedValue = listedElements.firstElement();
    emit(state + 1);
  }

  void cubitDeleteElement(text){
    listedElements.deleteElement(text);
    selectedValue = listedElements.firstElement();
    emit(state + 1);
  }

  void cubitEditElement(text, newText){
    listedElements.editElement(text, newText);
    selectedValue = listedElements.firstElement();
    emit(state + 1);
  }

  void cubitList(){
    emit(state + 1);
  }
}