import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<Brightness>{
  ThemeCubit():super(Brightness.light);
  void changeTheme(){
    emit(state == Brightness.light ? Brightness.dark : Brightness.light);
  }
}