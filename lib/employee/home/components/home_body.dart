import 'package:flutter/material.dart';
import 'package:hire_app/components/list_view_prod.dart';
import 'package:hire_app/constants.dart';
import 'List_header.dart';
import 'search_bar.dart';

class HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Welcome, Abdul Kadir!',
              style: kTextStyle,
            ),
            SizedBox(height: 20),
            Text(
              'Employment Status:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            SerachBar(color: Color(0xFF46AE69)),
            SizedBox(height: 80),
            ListHeader(),
            SizedBox(height: 20),
            ListViewProd(),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

