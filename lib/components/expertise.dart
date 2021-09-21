import 'package:flutter/material.dart';

class FilterSearch extends StatelessWidget {
  const FilterSearch({
    Key? key,
    this.text,
    this.icon, this.press,
  }) : super(key: key);
  final String? text;
  final IconData? icon;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.withOpacity(.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text!),
          GestureDetector(onTap: press, child: Icon(icon!))
        ],
      ),
    );
  }
}
