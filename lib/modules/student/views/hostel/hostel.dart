import 'package:flutter/material.dart';

class StudentHostelPage extends StatelessWidget {
  static const routeName = "student-hostel";
  const StudentHostelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Hostel page"),
      ),
    );
  }
}
