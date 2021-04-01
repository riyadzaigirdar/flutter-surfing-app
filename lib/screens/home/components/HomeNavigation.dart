import 'package:flutter/material.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <IconButton>[
          IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          IconButton(icon: Icon(Icons.menu), onPressed: () {})
        ],
      ),
    );
  }
}
