import 'package:flutter/material.dart';
import 'package:flutter_sec/constants/colors.dart';
import 'package:flutter_sec/modules/hostel/routes/hostel_routes.dart';
import 'package:flutter_sec/modules/hostel/views/student/add_student.dart';
import 'package:flutter_sec/modules/hostel/views/student/students.dart';
import 'package:get/get.dart';

class HostelSideBar extends StatelessWidget {
  const HostelSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.sideBarColor,
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text(
              "Mukti Juddah Hall",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          DrawerListTile(
            title: "Students",
            press: () {
              HostelRouter.goto(StudentsListPage.routeName);
            },
            isSelected:
                Get.parameters['page_name'] == StudentsListPage.routeName,
          ),
          DrawerListTile(
            title: "Rooms",
            press: () {},
            isSelected: Get.parameters['page_name'] == "rooms",
          ),
          DrawerListTile(
            title: "Fees",
            press: () {},
            isSelected: Get.parameters['page_name'] == "fees",
          ),
          DrawerListTile(
            title: "Transactions",
            press: () {},
            isSelected: Get.parameters['page_name'] == "transactions",
          ),
          DrawerListTile(
            title: "Add Student",
            press: () {
              HostelRouter.goto(AddStudentPage.routeName);
            },
            isSelected: Get.parameters['page_name'] == AddStudentPage.routeName,
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.press,
    required this.isSelected,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedColor: Colors.white12,
      hoverColor: Colors.white12,
      onTap: press,
      horizontalTitleGap: 0.0,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
