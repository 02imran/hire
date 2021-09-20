
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ListShort extends StatelessWidget {
  const ListShort({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 20,
        width: 60,
        decoration: BoxDecoration(color: kSuccessColor),
        child: Center(
          child: Text(
            'Shorlist',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
