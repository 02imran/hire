import 'package:flutter/material.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({
    Key? key,@required this.img,@required this.text,
  }) : super(key: key);
  final String? img, text;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              5,
              (index) => Card(
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset(
                            img!,
                            height: 80,
                            width: 80,
                          ),
                          Text(text!)
                        ],
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
