import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/employee/personal_info_screen/components/job_info.dart';
import 'package:hire_app/employee/personal_info_screen/components/list_view_personal.dart';

import 'alert_diolog_for_sms.dart';
import 'call_massage.dart';

class VerifiedPersonalBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.asset('assets/images/building.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mohammad Khan Abir',
                        style: TextStyle(fontSize: 14),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              height: 10,
                              width: 10,
                              child: SvgPicture.asset(
                                'assets/svg/check.svg',
                                color: kSuccessColor,
                              )),
                          SizedBox(height: 5),
                          Text(
                            'Varified',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CallMassage(
                                text: 'Call',
                                icon: Icons.phone,
                                width: 60,
                              ),
                              SizedBox(height: 5),
                              CallMassage(
                                press: () {
                                  alertDilogForMassage(context);
                                },
                                text: 'Massage',
                                icon: Icons.chat,
                                width: 90,
                              ),
                            ],
                          ),
                          SizedBox(width: 70),
                          SvgPicture.asset(
                            'assets/svg/user.svg',
                            height: 45,
                            width: 45,
                            color: kSuccessColor,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              ListViewPersonal(),
              SizedBox(height: 20),
              JobInfo(),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }

  
}
