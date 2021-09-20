import 'package:flutter/material.dart';
import 'package:hire_app/components/drawer_menu.dart';

import 'components/choose_expertise_body.dart';

class ChooseExpertise extends StatelessWidget {
  
   
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    return Scaffold(
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
          backgroundColor: Color(0xFF2682AD),
        ),
      body: ChooseExpertiseBody(),
    );
  }
}
