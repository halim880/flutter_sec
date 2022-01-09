import 'package:flutter/material.dart';
import 'package:flutter_sec/helpers/helpers.dart';
import 'package:flutter_sec/modules/hostel/routes/hostel_routes.dart';
import 'package:flutter_sec/modules/hostel/views/home/hostel_home.dart';
import 'package:flutter_sec/modules/student/views/student_dashboard.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          padding: const EdgeInsets.all(16),
          width: 300,
          decoration: BoxDecoration(
            color: Colors.lightBlue[50],
          ),
          child: Form(
              child: Column(
            children: [
              const Text("Login Here"),
              vSpace(16),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              vSpace(16),
              TextButton(
                onPressed: () {
                  HostelRouter.goto(StudentDashboard.homeRoute);
                },
                child: const Text("Login"),
              )
            ],
          )),
        ),
      ),
    );
  }
}
