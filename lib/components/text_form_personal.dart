import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextFormField textFormPersonal({String? name, Icon? icon}) {
  print('textFormPersonal');
  return TextFormField(
    
    validator: (String? val) {
      if (val == null || val.isEmpty) {
        print('textFormPersonal empty');
        Fluttertoast.showToast(msg: 'This field is requred');
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: name,
      labelStyle: TextStyle(fontSize: 13),
      suffixIcon: icon,
      contentPadding: EdgeInsets.symmetric(vertical: 15),
    ),
  );
}
