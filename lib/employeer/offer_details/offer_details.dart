import 'package:flutter/material.dart';
import 'package:hire_app/components/drawer_menu.dart';
import 'package:hire_app/employeer/offer_details/components/offer_details_body.dart';

class OfferDetails extends StatelessWidget {
  const OfferDetails({Key? key}) : super(key: key);

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
      body: OfferDetailsBody(),
    );
  }
}
