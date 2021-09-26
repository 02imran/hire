import 'package:flutter/material.dart';
import 'package:hire_app/components/drawer_menu.dart';

import '../../constants.dart';
import 'components/buyer_bidder_information_record_sell_body.dart';

class BuyerBidderInformationRecaodSell extends StatelessWidget {


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
      body: BuyerBidderInformationRecordSellBody(),
    );
  }
}
