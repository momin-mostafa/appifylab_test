import 'package:appify_task/data/repository/api/auth_api_repository.dart';
import 'package:appify_task/data/repository/api/events_api_repository.dart';
import 'package:appify_task/data/repository/appify_student_dio.dart';
import 'package:appify_task/view_model/auth.vm.dart';
import 'package:appify_task/view_model/events.vm.dart' show EventsVM;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nested/nested.dart';

class AppifyProviders {
  static List<SingleChildWidget> getProviders() {
    return [
      ChangeNotifierProvider(
        create: (_) => AuthApiRepository(AppifyDioSingleton().appifyTaskDio),
      ),
      ChangeNotifierProxyProvider<AuthApiRepository, AuthVM>(
        create: (BuildContext context) => AuthVM(),
        update: (BuildContext context, apiRepo, authVM) {
          authVM!.repository = apiRepo;
          return authVM;
        },
      ),
      ChangeNotifierProvider(
        create: (_) => EventsApiRepository(AppifyDioSingleton().appifyTaskDio),
      ),
      ChangeNotifierProxyProvider<EventsApiRepository, EventsVM>(
        create: (BuildContext context) => EventsVM(),
        update: (BuildContext context, apiRepo, vm) {
          vm!.repository = apiRepo;
          return vm;
        },
      ),
    ];
  }
}
