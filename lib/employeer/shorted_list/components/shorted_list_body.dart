import 'package:flutter/material.dart';
import 'short_listed_card.dart';

class ShortedListBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('Shortlisted', style: TextStyle(fontSize: 20)),
          SizedBox(height: 70),
          ShortedlistedCard(
            text1: 'Supervisor',
            totalNumOfcanditate: 12,
          ),
          ShortedlistedCard(
            text1: 'Forman',
            totalNumOfcanditate: 9,
          ),
        ],
      ),
    );
  }
}

