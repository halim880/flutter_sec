import 'package:flutter/material.dart';
import 'package:flutter_sec/data/courses.dart';
import 'package:flutter_sec/data/students.dart';
import 'package:flutter_sec/helpers/helpers.dart';
import 'package:flutter_sec/models/course.dart';
import 'package:flutter_sec/widgets/d_data.dart';

class FormDetails extends StatelessWidget {
  static const routeName = "form_details";
  FormDetails({Key? key}) : super(key: key);
  final student = students[0];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            const Text(
              "Form Details",
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Table(
              children: [
                CustomRow("Name", student.name),
                CustomRow("Student ID", student.id.toString()),
                CustomRow("Department", student.department),
                CustomRow("Session", student.session),
                CustomRow("Father's Name", student.fatherName),
                CustomRow("Mother's Name", student.motherName),
                CustomRow("Date of Birth", student.dob),
              ],
            ),
            vSpace(16),
            Table(
              textDirection: TextDirection.ltr,
              defaultColumnWidth: FixedColumnWidth(150.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.none, width: 1),
              children: [
                TableHeader(),
                ...courses.map((course) => CourseRow(course)).toList(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  TableRow CustomRow(String column, String data) {
    return TableRow(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                column + " : ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(data)],
        ),
      ],
    );
  }

  TableRow TableHeader() {
    return TableRow(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 40,
              child: const Text(
                'Course Code',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          'Course title',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]),
      Column(
        children: const [
          Text(
            'Credit',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ]);
  }

  TableRow CourseRow(Course course) {
    return TableRow(children: [
      TData(course.code),
      TData(course.title),
      TData(course.credit.toStringAsPrecision(2)),
    ]);
  }
}
