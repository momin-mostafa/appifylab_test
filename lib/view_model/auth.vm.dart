import 'package:appify_task/data/repository/api/auth_api_repository.dart';
import 'package:appify_task/utils.dart';
import 'package:appify_task/view/home.v.dart' show HomeView;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthVM with ChangeNotifier {
  late AuthApiRepository repository;

  void login(BuildContext context, {String? email, String? password}) async {
    final auth = await withLoading(() => repository.login(email, password));
    if (auth == null) return;
    repository.updateHeader(auth);
    navigateToHome(context);
  }

  navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeView()),
    );
  }
}
