import 'package:flutter/material.dart';
import 'package:surfer/screens/detail/components/DetailBottomContainer.dart';
import 'package:surfer/screens/detail/components/DetailTopContainer.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(this.id);
  final int id;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          DetailTopContainer(size: size),
          DetailBottomContainer(size, id)
        ],
      ),
    );
  }
}
