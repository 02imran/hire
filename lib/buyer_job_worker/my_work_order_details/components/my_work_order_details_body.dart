import 'package:flutter/material.dart';

class MyWorkOrderDetailsBody extends StatelessWidget {
  const MyWorkOrderDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text('Demo title', style: TextStyle(fontSize: 20)),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset('assets/images/building.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
