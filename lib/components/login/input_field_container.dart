import 'package:flutter/material.dart';

import '../../constants/theme_constant.dart';

class TextFeildContainer extends StatelessWidget {
  final Widget child;
  const TextFeildContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kPrimaryLightColor,
      ),
      child: child,
    );
  }
}
