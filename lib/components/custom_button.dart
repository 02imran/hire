import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    Key? key,
    @required this.text,
    @required this.press,
    @required this.color,
    this.size = 16,
    this.left = 40,
    this.right = 40,
  }) : super(key: key);
  final String? text;
  final GestureTapCallback? press;
  final Color? color;
  final double size, left, right;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press!,
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: size),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            EdgeInsets.only(left: left, right: right)),
        backgroundColor: MaterialStateProperty.all(
          color,
        ),
      ),
    );
  }
}
