import 'package:flutter/material.dart';
import 'package:flutter_sec/modules/student/controllers/registration_controller.dart';
import 'package:flutter_sec/modules/student/routes/student_routes.dart';
import 'package:flutter_sec/modules/student/views/registration/from_details.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  static const routeName = "registration";
  RegistrationPage({Key? key}) : super(key: key);

  final RegistrationController _controller = RegistrationController();

  String? semester;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: 400,
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(color: Colors.white),
      child: Form(
          child: Column(
        children: [
          const Text(
            "Register Here",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          const TextField(
            decoration: InputDecoration(
              labelText: "Student ID",
              hintText: "Enter your ID ",
            ),
          ),
          const SizedBox(height: 40),
          const TextField(
            decoration: InputDecoration(
              labelText: "Semester",
            ),
          ),
          const SizedBox(height: 40),
          TextButton(
            onPressed: () {
              StudentRouter.goto(FormDetails.routeName);
            },
            child: const Text("Next"),
          )
        ],
      )),
    );
  }
}
