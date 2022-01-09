import 'package:flutter/material.dart';
import 'package:flutter_sec/router.dart';
import 'package:flutter_sec/modules/student/routes/student_routes.dart';
import 'package:flutter_sec/widgets/dashboard_header.dart';
import 'package:flutter_sec/modules/student/views/student_side_bar.dart';
import 'package:flutter_sec/widgets/page_content.dart';

class StudentDashboard extends StatelessWidget {
  static const String homeRoute = "student-home";
  late Widget view;
  StudentDashboard() {
    view = view = AppRouter.getView(routes: studentRoutes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SideBar(),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                DashboardHeader(),
                PageContent(view),
              ],
            ),
          )
        ],
      ),
    );
  }
}
