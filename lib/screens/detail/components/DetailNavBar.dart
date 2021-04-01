import 'package:flutter/material.dart';
import 'package:surfer/screens/detail/components/DetailNavIcon.dart';

class DetailNavBar extends StatelessWidget {
  const DetailNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 70.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              DetailNavIcon(Icons.arrow_back),
              DetailNavIcon(Icons.favorite_border),
            ],
          ),
        ],
      ),
    );
  }
}
