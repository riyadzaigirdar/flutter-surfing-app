import 'package:flutter/material.dart';

class HomeSurferCard extends StatelessWidget {
  HomeSurferCard(this.press, this.id, this.instructorName, this.rating,
      this.instructorPic);

  final press;
  final int id;
  final String instructorName;
  final String rating;
  final String instructorPic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(context, id),
      child: Hero(
        tag: instructorPic,
        child: Container(
          width: 110,
          height: 190,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 110,
                  height: 140,
                  margin: const EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            offset: Offset(0, 10),
                            color: Colors.grey.withOpacity(0.9))
                      ],
                      image: DecorationImage(
                          image: AssetImage(instructorPic), fit: BoxFit.cover)),
                ),
                Text(
                  instructorName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 15.0,
                      ),
                      Text(rating)
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
