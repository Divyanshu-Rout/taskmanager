import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function press;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 80,
          ),
          minimumSize: Size(size.width * 0.6, 36),
          primary: textColor,
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          )),
      onPressed: () {},
      child: Text(text),
    );
  }
}
