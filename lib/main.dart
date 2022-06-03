import 'package:flutter/material.dart';
import 'package:taskmanager/constants/routes.dart';
import 'package:taskmanager/constants/theme_constant.dart';
import 'package:taskmanager/views/login_view.dart';
import 'package:taskmanager/views/signup_view.dart';
import 'package:taskmanager/views/welcome_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Task Manager',
    theme: ThemeData(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: const WelcomeView(),
    routes: {
      loginRoute: (context) => const LoginView(),
      signupRoute: (context) => const SignUpView(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}
