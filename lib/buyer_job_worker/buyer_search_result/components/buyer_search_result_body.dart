import 'package:flutter/material.dart';
import '../../../constants.dart';

class BuyerSearchResultBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('Search Result', style: kTextStyle),
            SizedBox(height: 10),
            buyerSearchResultList(),
          ],
        ),
      ),
    );
  }

  Widget buyerSearchResultList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 5,
          child: ListTile(
            title: Text(
              'Name',
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Marcentizing and co',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                Text('MOQ: 120,000', style: TextStyle(fontSize: 10)),
                Text('Total Production capacity/day: 120,000',
                    style: TextStyle(fontSize: 10)),
                Text('Experiance: 2500', style: TextStyle(fontSize: 10)),
                Text('Company Spaciality',
                    style: TextStyle(fontSize: 10, color: kSuccessColor)),
              ],
            ),
            leading: Image.asset('assets/images/building.png'),
          ),
        ),
      ),
    );
  }
}
