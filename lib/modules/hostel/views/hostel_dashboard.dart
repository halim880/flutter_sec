import 'package:flutter/material.dart';
import 'package:flutter_sec/menu_controller.dart';
import 'package:flutter_sec/modules/hostel/routes/hostel_routes.dart';
import 'package:flutter_sec/modules/hostel/views/hostel_side_bar.dart';
import 'package:flutter_sec/responsive.dart';
import 'package:flutter_sec/router.dart';
import 'package:flutter_sec/widgets/dashboard_header.dart';
import 'package:flutter_sec/widgets/page_content.dart';

class HostelDashboard extends StatelessWidget {
  static const String homeRoute = "student-home";
  late Widget view;
  HostelDashboard({Key? key}) : super(key: key) {
    view = AppRouter.getView(routes: hostelRoutes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: MenuController.scaffoldKey,
      drawer: const HostelSideBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (Responsive.isDesktop())
            const Expanded(
              child: HostelSideBar(),
            ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                const DashboardHeader(),
                PageContent(view),
              ],
            ),
          )
        ],
      ),
    );
  }
}
