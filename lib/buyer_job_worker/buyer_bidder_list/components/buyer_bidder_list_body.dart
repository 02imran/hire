import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyerBidderListBody extends StatelessWidget {
  const BuyerBidderListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text('Demo text'),
                    leading: SvgPicture.asset(
                      'assets/svg/user.svg',
                      height: 40,
                      width: 40,
                    ),
                    trailing: Column(
                      children: [
                        Text('৳ 48,000'),
                        SizedBox(height: 20),
                        Text('27/08/2020 12.24')
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohammadpur, Dhaka',
                          style: TextStyle(fontSize: 10),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Color(0xFFF2C94C),
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
