import 'dart:developer';

import 'package:appify_task/data/models/auth.m.dart' show Auth;
import 'package:appify_task/data/repository/api/repository_impl.dart'
    show APIRepository;
import 'package:appify_task/data/repository/const_endpoints.dart'
    show Endpoints;
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class AuthApiRepository with ChangeNotifier implements APIRepository {
  @override
  Dio dio;

  AuthApiRepository(this.dio);

  Future<Auth?> login(String? email, String? password) async {
    try {
      final response = await dio.post(
        Endpoints.login,
        data: {"email": email, "password": password},
      );
      return Auth.fromJson(response.data);
    } catch (e) {
      log("API FETCH ERROR", name: "LoginApiRepository.login", error: e);
      return null;
    }
  }

  void updateHeader(Auth? authModel) {
    dio.options.headers["Authorization"] =
        "${authModel?.type} ${authModel?.token}";
  }
}
