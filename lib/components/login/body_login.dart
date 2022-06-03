import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/components/generic/rounded_button.dart';
import 'package:taskmanager/components/login/already_have_an_account_check.dart';
import 'package:taskmanager/components/login/background_login.dart';
import 'package:taskmanager/components/login/password_field.dart';
import 'package:taskmanager/components/login/rounded_input_field.dart';
import 'package:taskmanager/constants/theme_constant.dart';

import '../../constants/routes.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SvgPicture.asset('assets/icons/login.svg', width: size.height * 0.3),
          RoundedInputFeild(
            hintText: 'your email',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          RoundedButton(
            text: "LOGIN",
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil((signupRoute), (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
