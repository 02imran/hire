import 'package:flutter/material.dart';
import 'expertise.dart';
import 'search_button.dart';

class ChooseExpertiseBody extends StatelessWidget {
  const ChooseExpertiseBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text('Choose Expertise', style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            Expertise(text: 'Garments factory', icon: Icons.arrow_drop_down),
            SizedBox(height: 20),
            Expertise(text: 'Garments factory', icon: Icons.arrow_drop_down),
            SizedBox(height: 20),
            Expertise(text: 'Garments factory', icon: Icons.arrow_drop_down),
            SizedBox(height: 20),
            SearchButton()
          ],
        ),
      ),
    );
  }
}

