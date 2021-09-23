import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SellerFeatureList extends StatelessWidget {
  const SellerFeatureList({
    Key? key,
    @required this.img,
    @required this.text,@required this.press,
  }) : super(key: key);
  final String? img, text;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              5,
              (index) => GestureDetector(
                    onTap: press,
                    child: Card(
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
                    ),
                  )),
        ],
      ),
    );
  }
}
