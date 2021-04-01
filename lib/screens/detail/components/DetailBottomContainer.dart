import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:surfer/models/instructor_model.dart';
import 'package:surfer/screens/detail/components/DetailBottomWhiteContainer.dart';
import 'package:surfer/screens/detail/components/DetailWhiteContainerImage.dart';

class DetailBottomContainer extends StatelessWidget {
  DetailBottomContainer(this.size, this.id);

  final Size size;
  final int id;

  @override
  Widget build(BuildContext context) {
    Instructor detailInstructor = getDetailInstrutor(id);
    double height = size.height * 0.43;
    double width = size.width;
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        width: width,
        height: height,
        color: Colors.transparent,
        child: Stack(
          children: [
            DetailBottomWhiteContainer(width, height, detailInstructor),
            DetailWhiteContainerImage(detailInstructor.instructorPic)
          ],
        ),
      ),
    );
  }
}
