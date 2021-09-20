import 'package:flutter/material.dart';

TextFormField textFormPersonal({String? name, Icon? icon}) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: name,
      labelStyle: TextStyle(fontSize: 13),
      suffixIcon: icon,
      contentPadding: EdgeInsets.symmetric(vertical: 15),
    ),
  );
}
