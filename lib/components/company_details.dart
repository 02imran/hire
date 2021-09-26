
import 'package:flutter/material.dart';

class CompanyDetails extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/building.png'),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem Ipsum',
                style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Icon(Icons.location_city),
                  Text('Lorem Ipsum'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.person_search),
                  Text('Lorem Ipsum'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
