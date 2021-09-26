import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';

import '../../../constants.dart';

Future<dynamic> alertDilogForMassage(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Write your massage:',
            style: TextStyle(fontSize: 14),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              color: Colors.red,
            ),
          ),
        ],
      ),
      actions: [
        Text(
          '142 charecters',
          style: TextStyle(fontSize: 10),
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.grey.withOpacity(.2),
          ),
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        Text(
          'It is a massage to keep massage under 270 character to avoid conversesion to multimedia massage',
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 10),
        ),
        Center(
          child: CustomeButton(
            text: 'Send',
            press: () {},
            color: kSuccessColor,
          ),
        ),
        Center(
          child: Text(
            'Your massage will be send both as sms and\nin app massage to the canditate',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
        )
      ],
    ),
  );
}
