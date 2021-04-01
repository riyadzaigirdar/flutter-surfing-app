import 'package:flutter/material.dart';
import 'package:surfer/models/instructor_model.dart';

class DetailBottomTextContainer extends StatelessWidget {
  const DetailBottomTextContainer(this.width, this.height, this.instructor);

  final double width;
  final double height;
  final Instructor instructor;
  final selectedStar = 2;

  String formatText(String text) {
    return text.replaceRange(140, text.length, "...");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.86,
      height: height * 0.55,
      margin: const EdgeInsets.only(top: 22.0),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              instructor.instructorName,
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              "Santa Monica, CA",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.5)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: StarContainer(selectedStar)),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  "4.7",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "(200 reviews)",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.3)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              formatText(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Text(
            "Read more",
            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class StarContainer extends StatefulWidget {
  StarContainer(this.star);

  final int star;
  @override
  _StarContainerState createState() => _StarContainerState();
}

class _StarContainerState extends State<StarContainer> {
  final int allstar = 5;
  int selectedStar;
  @override
  void initState() {
    super.initState();
    selectedStar = widget.star;
    setState(() {});
  }

  void changeStar(int index) {
    setState(() {
      selectedStar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<GestureDetector> iconList = [];
    for (var i = 0; i < allstar; i++) {
      iconList.add(GestureDetector(
        onTap: () => changeStar(i),
        child: Icon(
          selectedStar >= i ? Icons.star : Icons.star_border,
          color: Colors.orange,
          size: 15,
        ),
      ));
    }
    return Row(
      children: iconList,
    );
  }
}
