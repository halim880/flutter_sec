import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter_sec/data/students.dart';
import 'package:flutter_sec/models/student.dart';

class StudentList extends StatelessWidget {
  const StudentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultPadding = 16;
    var secondaryColor = Colors.white54;
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hostel Students",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: const [
                DataColumn(
                  label: Text(
                    "ID ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Name ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Department",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              rows: List.generate(
                students.length,
                (index) => studentRow(students[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow studentRow(Student student) {
  double defaultPadding = 16;
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(student.id.toString()),
            ),
          ],
        ),
      ),
      DataCell(Text(student.name)),
      DataCell(Text(student.department)),
    ],
  );
}
