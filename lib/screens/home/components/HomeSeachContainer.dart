import 'package:flutter/material.dart';
import 'package:surfer/constants.dart';

class HomeSearchContainer extends StatelessWidget {
  const HomeSearchContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              hintText: "Search",
              hintStyle: searchtext,
              suffixText: "Filter",
              suffixIcon: Icon(
                Icons.filter_3_sharp,
                color: Colors.black,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ));
  }
}
