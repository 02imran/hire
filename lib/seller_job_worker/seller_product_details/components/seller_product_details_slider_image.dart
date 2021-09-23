

import 'package:flutter/material.dart';

class SellerProductDetailsSliderImage extends StatelessWidget {
  const SellerProductDetailsSliderImage({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/building.png'),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -10,
            right: 140,
            child: Row(
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? Colors.black
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
