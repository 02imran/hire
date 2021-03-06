import 'package:flutter/material.dart';
import 'components/fill_body.dart';

class FillForm extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: FillBody(),
    );
  }
}
