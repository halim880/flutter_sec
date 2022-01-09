import 'package:flutter/material.dart';
import 'package:flutter_sec/constants/colors.dart';
import 'package:flutter_sec/modules/student/routes/student_routes.dart';
import 'package:flutter_sec/modules/student/views/courses/courses.dart';
import 'package:flutter_sec/modules/student/views/exam/student_exam.dart';
import 'package:flutter_sec/modules/student/views/hostel/hostel.dart';
import 'package:flutter_sec/modules/student/views/library/student_library.dart';
import 'package:flutter_sec/modules/student/views/registration/registration.dart';
import 'package:flutter_sec/modules/student/views/result/student_result.dart';
import 'package:flutter_sec/widgets/side_bar_header.dart';
import 'package:flutter_sec/widgets/side_bar_item.dart';
import 'package:get/get.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.sideBarColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SideBarHeader(username: "Akash"),
            SideBarItem(
              title: "Dashboard",
              icon: Icons.school,
              onPress: () {},
              isSelected: false,
            ),
            SideBarItem(
              title: "Hostel",
              icon: Icons.home,
              onPress: () {
                StudentRouter.goto(StudentHostelPage.routeName);
              },
              isSelected: true,
            ),
            SideBarItem(
              title: "Exam",
              icon: Icons.note,
              onPress: () {
                StudentRouter.goto(StudentExamPage.routeName);
              },
              isSelected: false,
            ),
            SideBarItem(
              title: "Result",
              icon: Icons.notes_sharp,
              onPress: () {
                StudentRouter.goto(StudentResultPage.routeName);
              },
              isSelected: false,
            ),
            SideBarItem(
              title: "Registration",
              icon: Icons.note_add_sharp,
              onPress: () {
                StudentRouter.goto(RegistrationPage.routeName);
              },
              isSelected: false,
            ),
            SideBarItem(
              title: "Library",
              icon: Icons.library_books,
              onPress: () {
                StudentRouter.goto(StudentLibraryPage.routeName);
              },
              isSelected: false,
            ),
            SideBarItem(
              title: "Courses",
              icon: Icons.library_books,
              onPress: () {
                StudentRouter.goto(CoursesPage.routeName);
              },
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }
}
