import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/my_work_order_details/components/my_work_order_details_body.dart';
import 'package:hire_app/components/drawer_menu.dart';

import '../../constants.dart';

class MyWorkOrderDetails extends StatelessWidget {
 

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
        backgroundColor: kAppBarColor,
      ),
      body: MyWorkOrderDetailsBody(),
    );
  }
}
