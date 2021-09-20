
import 'package:flutter/material.dart';

class EmployeeImage extends StatelessWidget {
  const EmployeeImage({
    Key? key, @required this.img,
  }) : super(key: key);
  final String? img;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 90,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEAEBEB),
          border: Border.all(color: Colors.grey),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(img!),
        ),
      ),
    );
  }
}

