import 'package:flutter/material.dart';
import 'package:hire_app/components/drawer_menu.dart';
import 'package:hire_app/employee/home/components/home_body.dart';

import '../../constants.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        drawer: DrawerMenu(),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          actions: [
            GestureDetector(
              onTap: () {
                _drawerKey.currentState!.openDrawer();
              },
              child: Icon(Icons.menu),
            ),
          ],
          backgroundColor: kAppBarColor,
        ),
        body: HomeBody(),
      ),
    );
  }
}
