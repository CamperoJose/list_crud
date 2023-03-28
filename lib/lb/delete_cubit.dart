import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteCubit extends Cubit<int> {
  DeleteCubit() : super(0);

  void increment() => emit(state + 1);

  void random() async {
    var rng = Random();
    while(true){
      await Future.delayed(Duration(seconds: 1));
      emit(rng.nextInt(100));
    }
    //generar numero aleatorio entre 0 y 100

  }
}
