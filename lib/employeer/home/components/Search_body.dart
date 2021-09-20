import 'package:flutter/material.dart';
import 'package:hire_app/employeer/home/components/list_view_data.dart';

import 'List_header.dart';
import 'search.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

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
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 20),
            Text(
              'Search your desire candidate:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            SerachBar(color: Color(0xFF46AE69)),
            SizedBox(height: 80),
            ListHeader(),
            SizedBox(height: 20),
            ListViewData(),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
