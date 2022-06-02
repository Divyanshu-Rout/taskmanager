import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/components/generic/rounded_button.dart';
import 'package:taskmanager/components/welcome/background.dart';
import 'package:taskmanager/constants/theme_constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'WELCOME TO TASK MANAGER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.4,
          ),
          const SizedBox(
            height: 40,
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
          RoundedButton(
            text: "SIGNUP",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {},
          ),
        ],
      ),
    );
  }
}
