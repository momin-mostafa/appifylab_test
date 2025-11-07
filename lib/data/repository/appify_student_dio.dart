import 'package:dio/dio.dart';

class AppifyDioSingleton {
  Dio appifyTaskDio = Dio();

  static final AppifyDioSingleton _instance = AppifyDioSingleton._();

  AppifyDioSingleton._();

  factory AppifyDioSingleton() => _instance;
}
