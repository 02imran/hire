import 'package:flutter/material.dart';

import 'employee_image.dart';
import 'employee_text.dart';

class EmployBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              height: 120,
              width: double.infinity,
              child: Row(
                children: [
                  EmployeeImage(
                    img: 'assets/images/construction-worker.png',
                  ),
                  EmployeeText(
                    eText1: 'I am an ',
                    eText2: 'EMPLOYEE',
                    bText1: 'চাকুরি ',
                    bText2: 'প্রার্থী',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              height: 120,
              width: double.infinity,
              child: Row(
                children: [
                  EmployeeImage(
                    img: 'assets/images/building.png',
                  ),
                  EmployeeText(
                    eText1: 'I am an ',
                    eText2: 'EMPLOYER',
                    bText1: 'চাকুরি ',
                    bText2: 'দাতা',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
