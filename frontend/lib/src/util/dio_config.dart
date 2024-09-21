import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioConfig{
  Dio dio = Dio();

  void dioInit(){
    debugPrint("\n\nINITED INITED INITED\n\n");
    dio.options.baseUrl = 'http://localhost:8080/v1';
  }
}