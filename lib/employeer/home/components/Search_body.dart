import 'package:flutter/material.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/employee/details_screen/details_screen.dart';
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
              style: kTextStyle,
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
            listViewData(context),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  ListView listViewData(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailsScreen(),
            ),
          );
        },
        child: Card(
          elevation: 5,
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name',
                ),
                Text(
                  '18 decemmber 2020',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            subtitle: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
            ),
          ),
        ),
      ),
    );
  }
}
