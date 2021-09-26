import 'package:flutter/material.dart';
import 'package:hire_app/employee/details_screen/details_screen.dart';

class ListViewProd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(
      10,
      (i) => "Lorem Ipsum $i",
    );

    ///This file return listview iteam

    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
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
            title: Text(
              items[index],
            ),
            subtitle: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
            ),
            leading: Image.asset('assets/images/building.png'),
          ),
        ),
      ),
    );
  }
}
