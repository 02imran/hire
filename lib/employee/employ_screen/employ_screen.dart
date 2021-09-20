import 'package:flutter/material.dart';
import 'package:hire_app/employee/employ_screen/components/employ_body.dart';

class EmployScreen extends StatelessWidget {
  const EmployScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmployBody(),
    );
  }
}
