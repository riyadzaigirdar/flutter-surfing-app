import 'package:surfer/services/instructor_service.dart';

class Instructor {
  int id;
  String instructorName;
  String rating;
  String instructorPic;
  Instructor(this.id, this.instructorName, this.rating, this.instructorPic);
}

List<Instructor> getListInstructor() {
  List<Instructor> listitems = [];
  apidata.forEach((item) {
    var obj = Instructor(item["id"], item["instructorName"], item["rating"],
        item["instructorPic"]);
    listitems.add(obj);
  });
  return listitems;
}

Instructor getDetailInstrutor(id) {
  var instructors = getListInstructor();
  for (var i = 0; i < instructors.length; i++) {
    if (instructors[i].id == id) {
      return instructors[i];
    }
  }
}
