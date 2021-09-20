import 'package:flutter/material.dart';

class SerachBar extends StatelessWidget {
  const SerachBar({
    Key? key,
    @required this.color,
  }) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.grey.withOpacity(0.2),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusColor: Colors.grey,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 48,
            width: 90,
            color: color,
            child: Center(
              child: Row(
                children: [
                  Icon(
                    Icons.rounded_corner,
                    color: Colors.white,
                  ),
                  Text(
                    'CHANGE',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
