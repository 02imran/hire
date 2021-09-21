import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_product_search/components/buyer_product_search_body.dart';
import 'package:hire_app/components/drawer_menu.dart';

import '../../constants.dart';

class BuyerProductSearch extends StatelessWidget {
  const BuyerProductSearch({Key? key}) : super(key: key);

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
      body: BuyerProductSearchBody(),
    );
  }
}
