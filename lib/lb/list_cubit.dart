import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/list.dart';


class ListCubit extends Cubit<int> {
  ListCubit() : super(0);

  void CubitAddElement(text){
    listedElements.addElement(text);
    selectedValue = listedElements.firstElement();
    emit(state + 1);
  }

  void CubitDeleteElement(text){
    listedElements.deleteElement(text);
    selectedValue = listedElements.firstElement();
    emit(state + 1);
  }

  void CubitEditElement(text, newText){
    listedElements.editElement(text, newText);
    selectedValue = listedElements.firstElement();
    emit(state + 1);
  }

  void CubitList(){
    emit(state + 1);
  }

}