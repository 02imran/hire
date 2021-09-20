import 'package:flutter/material.dart';
import 'package:hire_app/employee/details_screen/details_screen.dart';

class ListViewData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(
      10,
      (i) => "Lorem Ipsum $i",
    );

    ///This file return listview iteam

    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
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
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    items[index],
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
      ),
    );
  }
}
