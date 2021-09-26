import 'package:flutter/material.dart';

class FilterSearch extends StatelessWidget {
  FilterSearch({
    Key? key,
    this.text,
    this.icon,
    this.press,
  }) : super(key: key);
  final String? text;
  final IconData? icon;
  final GestureTapCallback? press;

  String? _selectedValue;
  List<String> listOfValue = ['Demo', 'Demo2', 'Demo3', 'Demo4', 'Demo5'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text(
        'choose one',
      ),
      isExpanded: true,
      onChanged: (String? val) {
        print(_selectedValue = val.toString());
      },
      items: listOfValue.map((String val) {
        return DropdownMenuItem(
          value: val,
          child: Text(
            val,
          ),
        );
      }).toList(),
    );
  }
}
