

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SearchListView extends StatelessWidget {
  
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
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => DetailsScreen(),
            //   ),
            // );
          },
          child: Card(
            elevation: 5,
            child: ListTile(
              title: Text(
                items[index],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Experience: 5 years', style: TextStyle(fontSize: 10)),
                  Text('Location: Banani', style: TextStyle(fontSize: 10)),
                  Text('Expected selary: 2500', style: TextStyle(fontSize: 10)),
                  Text('Age: 28', style: TextStyle(fontSize: 10)),
                ],
              ),
              trailing: Column(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset(
                      'assets/svg/user.svg',
                      color: kSuccessColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 10,
                    width: 60,
                    child: Row(
                      children: [
                        SizedBox(
                            height: 10,
                            width: 10,
                            child: SvgPicture.asset(
                              'assets/svg/check.svg',
                              color: kSuccessColor,
                            )),
                        SizedBox(width: 5),
                        Text(
                          'Varified',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              leading: Image.asset('assets/images/building.png'),
            ),
          ),
        ),
      ),
    );
  }
}
