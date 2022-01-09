import 'package:flutter/cupertino.dart';
import 'package:flutter_sec/modules/hostel/views/student/add_student.dart';
import 'package:flutter_sec/modules/hostel/views/student/students.dart';
import 'package:flutter_sec/modules/hostel/views/home/hostel_home.dart';
import 'package:get/get.dart';

Map<String, Widget> hostelRoutes = {
  HostelHomePage.routeName: const HostelHomePage(),
  StudentsListPage.routeName: const StudentsListPage(),
  AddStudentPage.routeName: const AddStudentPage(),
};

class HostelRouter {
  static String baseRoute = "/hostel/";

  static void goto(String route) {
    Get.toNamed(baseRoute + route);
  }
}
