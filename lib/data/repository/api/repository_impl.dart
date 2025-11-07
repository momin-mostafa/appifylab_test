import 'package:dio/dio.dart';

abstract class APIRepository{
  Dio dio;
  APIRepository(this.dio);
}