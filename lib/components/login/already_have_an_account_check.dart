import 'package:flutter/material.dart';
import 'package:taskmanager/constants/theme_constant.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have a account ?" : "Already have an Account ?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press(),
          child: const Text(
            ' sign up',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
