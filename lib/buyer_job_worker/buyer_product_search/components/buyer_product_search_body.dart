import 'package:flutter/material.dart';
import 'package:hire_app/components/expertise.dart';
import 'package:hire_app/components/search_button.dart';

class BuyerProductSearchBody extends StatelessWidget {
  const BuyerProductSearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text('Choose FilterSearch', style: TextStyle(fontSize: 22)),
          SizedBox(height: 20),
          FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
          SizedBox(height: 20),
          FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
          SizedBox(height: 20),
          FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
          SizedBox(height: 20),
          SearchButton()
        ],
      ),
    );
  }
}
