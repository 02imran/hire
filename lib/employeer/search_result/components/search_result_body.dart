import 'package:flutter/material.dart';
import 'package:hire_app/components/search_list_view.dart';
import 'package:hire_app/constants.dart';

class SearchResultBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search Result', style: kTextStyle),
                  Icon(Icons.rounded_corner)
                ],
              ),
              SizedBox(height: 10),
              Text(
                '247 candidate found here',
                style: TextStyle(fontSize: 10),
              ),
              SearchListView()
            ],
          ),
        ),
      ),
    );
  }
}

