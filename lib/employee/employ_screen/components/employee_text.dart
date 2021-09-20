

import 'package:flutter/material.dart';

import '../../../constants.dart';

class EmployeeText extends StatelessWidget {
  const EmployeeText({
    Key? key,@required this.eText1,@required this.eText2,@required this.bText1,@required this.bText2,
  }) : super(key: key);
  final String? eText1, eText2, bText1, bText2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Color(0xFFE2E2E3),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 30, top: 20, bottom: 10),
                  child: Text(
                    eText1!,
                    style: TextStyle(color: kTextColor, fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    eText2!,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 70, top: 5),
                  child: Text(
                    bText1!,
                    style: TextStyle(color: kTextColor, fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    bText2!,
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
