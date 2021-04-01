import 'package:flutter/material.dart';
import 'package:surfer/constants.dart';

class HomeSearchContainer extends StatefulWidget {
  @override
  _HomeSearchContainerState createState() => _HomeSearchContainerState();
}

class _HomeSearchContainerState extends State<HomeSearchContainer> {
  String filtervalue = "One";

  String changeFilter(value) {
    filtervalue = value;
    setState(() {});
    return filtervalue;
  }

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
              suffixText: filtervalue,
              suffixIcon: MyStatefulWidget(filtervalue, changeFilter),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget(this.value, this.press);

  final value;
  final press;
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String value;
  var press;
  @override
  void initState() {
    super.initState();
    value = widget.value;
    press = widget.press;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (newValue) {
        value = press(newValue);
        setState(() {});
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
