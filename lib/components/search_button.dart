import 'package:flutter/material.dart';

import '../constants.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key, this.press,
  }) : super(key: key);
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Center(
        child: Container(
          height: 48,
          width: 110,
          color: kSuccessColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Text(
                'SEARCH',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
