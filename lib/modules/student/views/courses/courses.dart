import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  static const String routeName = "student-courses";

  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Courses"),
      ),
    );
  }
}
