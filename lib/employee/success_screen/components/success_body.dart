
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/employee/personal_info_screen/personal_info_screen.dart';


class SuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/check.svg',
              color: kSuccessColor,
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Thanks! Your phone number \n has been verified',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
  
            TweenAnimationBuilder(
              duration: Duration(seconds: 3),
              tween: Tween(begin: Duration(seconds: 3), end: Duration.zero),
              onEnd: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => PersonalInfoScreen()));
              },
              builder: (BuildContext context, Duration value, Widget? child) {
                return Text('');
              },
            ),
          ],
        ),
      ),
    );
  }
}
