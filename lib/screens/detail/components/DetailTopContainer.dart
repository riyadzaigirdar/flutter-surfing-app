import 'package:flutter/material.dart';
import 'package:surfer/screens/detail/components/DetailCenterButton.dart';
import 'package:surfer/screens/detail/components/DetailNavBar.dart';

class DetailTopContainer extends StatelessWidget {
  const DetailTopContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/surfing.jpg"), fit: BoxFit.cover)),
      child: Column(children: [
        DetailNavBar(),
        SizedBox(
          height: 80,
        ),
        DetailCenterButton(size: size)
      ]),
    );
  }
}
