import 'package:flutter/cupertino.dart';
import 'package:flutter_sec/modules/student/views/exam/student_exam.dart';
import 'package:flutter_sec/modules/student/views/home/home.dart';
import 'package:flutter_sec/modules/student/views/hostel/hostel.dart';
import 'package:flutter_sec/modules/student/views/library/student_library.dart';
import 'package:flutter_sec/modules/student/views/registration/from_details.dart';
import 'package:flutter_sec/modules/student/views/registration/registration.dart';
import 'package:flutter_sec/modules/student/views/result/student_result.dart';
import 'package:get/get.dart';

Map<String, Widget> studentRoutes = {
  StudentExamPage.routeName: const StudentExamPage(),
  StudentResultPage.routeName: const StudentResultPage(),
  StudentHostelPage.routeName: const StudentHostelPage(),
  StudentLibraryPage.routeName: const StudentLibraryPage(),
  RegistrationPage.routeName: RegistrationPage(),
  FormDetails.routeName: FormDetails(),
  StudentHomePage.routeName: const StudentHomePage(),
};

class StudentRouter {
  static String baseRoute = "/student/";

  static void goto(String route) {
    Get.toNamed(baseRoute + route);
  }
}
