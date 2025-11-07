import 'package:appify_task/view_model/auth.vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: email,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(labelText: "Password"),
            ),
            FilledButton(
              onPressed:
                  () => context.read<AuthVM>().login(
                    context,
                    email: email.text,
                    password: password.text,
                  ),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }
}
