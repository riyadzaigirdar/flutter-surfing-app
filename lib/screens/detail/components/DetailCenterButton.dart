import 'package:flutter/material.dart';

class DetailCenterButton extends StatelessWidget {
  const DetailCenterButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.7),
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      child: Center(
          child: Text(
        "Explore Programs",
        style: TextStyle(
            color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.bold),
      )),
    );
  }
}
