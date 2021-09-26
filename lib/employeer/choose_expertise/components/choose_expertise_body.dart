import 'package:flutter/material.dart';
import '../../../components/filter_search.dart';
import '../../../components/search_button.dart';

class ChooseExpertiseBody extends StatelessWidget {

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
            FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
            SizedBox(height: 20),
            FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
            SizedBox(height: 20),
            FilterSearch(text: 'Garments factory', icon: Icons.arrow_drop_down),
            SizedBox(height: 20),
            SearchButton()
          ],
        ),
      ),
    );
  }
}

