import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/employeer/short_list_search/components/list_short.dart';
import 'package:hire_app/employeer/verified_personal_info/verified_personal_info.dart';

class ShortListBody extends StatelessWidget {
  final bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search Result', style: kTextStyle),
                  Row(
                    children: [
                      ListShort(),
                      SizedBox(width: 20),
                      Icon(Icons.rounded_corner)
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                '247 candidate found here',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 20),
              checkListView(context, isChecked)
            ],
          ),
        ),
      ),
    );
  }

  Widget checkListView(BuildContext context, bool? isChecked) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => VerifiedPersonalInfo(),
            ),
          );
        },
        child: Card(
          elevation: 5,
          child: ListTile(
            title: Text(
              'Name',
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
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset('assets/images/building.png'),
                Positioned(
                    top: -20,
                    left: -25,
                    child: Checkbox(
                      fillColor: MaterialStateProperty.all(kSuccessColor),
                      activeColor: kSuccessColor,
                      value: isChecked,
                      onChanged: (isChecked) {
                        isChecked = true;
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
