import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_home_screen/components/buyer_search_body.dart';
import 'package:hire_app/components/drawer_menu.dart';
import 'package:hire_app/constants.dart';

class BuyerSearch extends StatelessWidget {
  const BuyerSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
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
      body: BuyerSearchBody(),
    );
  }
}
