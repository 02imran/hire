import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: kButtonColor,
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: kButtonColor,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/svg/user.svg',
                    color: Colors.white,
                  ),
                ),
              ),
              Title(
                color: Colors.white,
                child: Text(
                  'Abdullah',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListOfIcon(
                text: 'Profile',
                icon: Icon(Icons.person, color: Colors.white),
              ),
              ListOfIcon(
                text: 'Offer',
                icon: Icon(Icons.mail_sharp, color: Colors.white),
              ),
              ListOfIcon(
                text: 'Notification',
                icon: Icon(Icons.notifications, color: Colors.white),
              ),
              ListOfIcon(
                text: 'Help',
                icon: Icon(Icons.question_answer, color: Colors.white),
              ),
              ListOfIcon(
                text: 'About',
                icon: Icon(Icons.question_answer_outlined, color: Colors.white),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class ListOfIcon extends StatelessWidget {
  const ListOfIcon({
    Key? key,
    this.icon,
    this.text,
  }) : super(key: key);
  final Icon? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(text!, style: TextStyle(color: Colors.white)),
    );
  }
}
