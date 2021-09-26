import 'package:flutter/material.dart';
import 'package:hire_app/employee/verify_screen/components/verify_body.dart';

class VerifyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: VerifyBody(),
    );
  }
}
