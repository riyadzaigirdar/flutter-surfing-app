import 'package:flutter/material.dart';

class DetailNavIcon extends StatelessWidget {
  DetailNavIcon(this.icon);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.grey.withOpacity(0.7)),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
