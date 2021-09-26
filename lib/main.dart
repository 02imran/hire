import 'package:flutter/material.dart';
import 'employee/personal_info_screen/personal_info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PersonalInfoScreen(),
    );
  }
}
