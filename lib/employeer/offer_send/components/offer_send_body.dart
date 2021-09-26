import 'package:flutter/material.dart';
import 'package:hire_app/employeer/offer_details/offer_details.dart';


class OfferSendBody extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18),
              Text('Offer Send', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              listOfOfferData(context),
            ],
          ),
        ),
      ),
    );
  }
  Widget listOfOfferData(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => OfferDetails(),
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
