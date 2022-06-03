import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/components/generic/rounded_button.dart';
import 'package:taskmanager/components/login/already_have_an_account_check.dart';
import 'package:taskmanager/components/login/password_field.dart';
import 'package:taskmanager/components/login/rounded_input_field.dart';
import 'package:taskmanager/constants/routes.dart';
import 'package:taskmanager/constants/theme_constant.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackgroundSignUp(
      child: Scaffold(
        body: BackgroundSignUp(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                'assets/icons/signup.svg',
                width: size.height * 0.25,
              ),
              const SizedBox(
                height: 30,
              ),
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
                text: "SIGN UP",
                color: kPrimaryColor,
                textColor: Colors.white,
                press: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        (loginRoute), (route) => false);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundSignUp extends StatelessWidget {
  final Widget child;
  const BackgroundSignUp({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/signup_top.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: size.width * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
