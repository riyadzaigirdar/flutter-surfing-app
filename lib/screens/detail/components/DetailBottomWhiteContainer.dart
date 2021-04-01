import 'package:flutter/material.dart';
import 'package:surfer/models/instructor_model.dart';
import 'package:surfer/screens/detail/components/DetailBottomTextContainer.dart';

class DetailBottomWhiteContainer extends StatelessWidget {
  const DetailBottomWhiteContainer(
      this.width, this.height, this.detailInstructor);

  final double width;
  final double height;
  final Instructor detailInstructor;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        width: width,
        height: height * 0.93,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0))),
        child: Column(
          children: [
            DetailBottomTextContainer(width, height, detailInstructor),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: width * 0.33,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            "200",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Reviews",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.3)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.33,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "Programs",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.3)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.34,
                    decoration: BoxDecoration(
                        color: Colors.orange[800],
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(50.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            "Availabilty",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
