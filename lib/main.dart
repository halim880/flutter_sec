import "package:flutter/material.dart";
import 'package:flutter_sec/modules/hostel/views/hostel_dashboard.dart';
import 'package:flutter_sec/modules/hostel/views/student/students.dart';
import 'package:flutter_sec/modules/student/views/home/home.dart';
import 'package:flutter_sec/modules/student/views/student_dashboard.dart';
import 'package:flutter_sec/router.dart';
// import 'package:flutter_sec/modules/student/views/student_dashboard.dart';
import 'package:flutter_sec/views/login/login_page.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

void main(List<String> args) {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SEC",
      // home: HostelDashboard(),
      home: StudentDashboard(),
      initialRoute: '/',
      getPages: AppRouter.pages,
      defaultTransition: Transition.fadeIn,
    );
  }
}
