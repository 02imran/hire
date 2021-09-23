import 'package:flutter/material.dart';
import 'package:hire_app/components/filter_search.dart';
import 'package:hire_app/components/search_button.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/seller_job_worker/seller_search_result/seller_search_result.dart';

class SellerWorkOrderSearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text('Work Order Search', style: kTextStyle),
          SizedBox(height: 20),
          FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
          SizedBox(height: 20),
          FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
          SizedBox(height: 20),
          FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
          SizedBox(height: 20),
          SearchButton(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => SellerSearchResult()));
            },
          )
        ],
      ),
    );
  }
}
