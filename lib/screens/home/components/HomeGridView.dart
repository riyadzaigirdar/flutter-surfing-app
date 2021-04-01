import 'package:flutter/material.dart';
import 'package:surfer/models/instructor_model.dart';
import 'package:surfer/screens/home/components/HomeSurferCard.dart';

class HomeGridview extends StatelessWidget {
  HomeGridview(this.press);
  final press;
  final List<Instructor> modelSurferList = getListInstructor();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: modelSurferList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 0.6),
          itemBuilder: (context, index) => HomeSurferCard(
              press,
              modelSurferList[index].id,
              modelSurferList[index].instructorName,
              modelSurferList[index].rating,
              modelSurferList[index].instructorPic)),
    );
  }
}
