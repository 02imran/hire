import 'package:flutter/material.dart';
import 'package:hire_app/components/drawer_menu.dart';
import 'package:hire_app/constants.dart';
import 'components/seller_search_body.dart';

class SellerHomeScreen extends StatelessWidget {

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
      body: SellerSearchBody(),
    );
  }
}
