import 'package:flutter/material.dart';
import 'package:flutter_sec/data/students.dart';
import 'package:flutter_sec/helpers/helpers.dart';
import 'package:flutter_sec/models/student.dart';
import 'package:flutter_sec/modules/hostel/views/student/widgets/students_table.dart';
import 'package:flutter_sec/widgets/d_data.dart';

class StudentsListPage extends StatelessWidget {
  static const String routeName = "hostel-students";
  const StudentsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity - 100,
      padding: paddingAll(16.0),
      margin: marginAll(16),
      decoration: const BoxDecoration(color: Colors.white),
      child: const StudentList(),
    );
  }
}
