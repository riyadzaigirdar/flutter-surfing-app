import 'package:flutter/material.dart';

class DetailWhiteContainerImage extends StatelessWidget {
  const DetailWhiteContainerImage(this.imagePath);

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 30,
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(imagePath),
                fit: BoxFit.cover)),
      ),
    );
  }
}
