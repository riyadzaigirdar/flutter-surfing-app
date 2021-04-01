import 'package:flutter/material.dart';
import 'package:surfer/screens/detail/detail.dart';
import 'package:surfer/screens/home/components/HomeGridView.dart';
import 'package:surfer/screens/home/components/HomeHeaderLocation.dart';
import 'package:surfer/screens/home/components/HomeNavigation.dart';
import 'package:surfer/screens/home/components/HomeSeachContainer.dart';

class HomePage extends StatelessWidget {
  void changeRouteToDetail(BuildContext context, int id) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailScreen(id)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          HomeNavigation(),
          HomeHeaderLocation(),
          HomeSearchContainer(),
          HomeGridview(changeRouteToDetail)
        ],
      ),
    );
  }
}
