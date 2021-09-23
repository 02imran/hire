import 'package:flutter/material.dart';
import 'package:hire_app/components/drawer_menu.dart';
import 'package:hire_app/seller_job_worker/seller_work_order_search/components/seller_work_order_search_body.dart';

import '../../constants.dart';

class SellerWorkOrderSearch extends StatelessWidget {
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
      body: SellerWorkOrderSearchBody(),
    );
  }
}
