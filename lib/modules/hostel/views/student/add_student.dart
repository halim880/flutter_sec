import 'package:flutter/material.dart';

class AddStudentPage extends StatelessWidget {
  static const String routeName = "add-student";

  const AddStudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Add new student"),
    );
  }
}
