import 'package:flutter/material.dart';
import 'package:surfer/constants.dart';

class HomeHeaderLocation extends StatelessWidget {
  const HomeHeaderLocation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned(
                      bottom: 5,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 3,
                        width: 20,
                        color: Colors.yellow,
                      )),
                  Text(
                    "Santa Monica asdas, CA",
                    style: headertext,
                  )
                ],
              ),
              IconButton(
                  icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
            ],
          ),
          Text(
            "Best Surfing Instructors in Santa Monica, California",
            style: paratext1,
          )
        ],
      ),
    );
  }
}
