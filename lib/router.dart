import 'package:flutter/material.dart';
import 'package:flutter_sec/modules/hostel/views/hostel_dashboard.dart';
import 'package:flutter_sec/modules/student/views/student_dashboard.dart';
import 'package:flutter_sec/views/page_not_found.dart';
import 'package:get/get.dart';

class AppRouter {
  static var pages = [
    GetPage(name: '/', page: () => HostelDashboard()),
    GetPage(name: '/hostel/:page_name', page: () => HostelDashboard()),
    GetPage(name: '/student/:page_name', page: () => StudentDashboard()),
  ];

  static Widget getView({Map<String, Widget>? routes}) {
    var view;
    String? route = Get.parameters['page_name'];
    if (route != null) {
      view = routes![route];
    }
    return view ?? const PageNotFound();
  }

  static void to(String routeName) {
    Get.toNamed('/' + routeName);
  }
}
