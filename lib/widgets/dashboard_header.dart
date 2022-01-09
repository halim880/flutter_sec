import 'package:flutter/material.dart';
import 'package:flutter_sec/widgets/logout_button.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  void logout() {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 70,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          const Text(
            "Dashboard",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          LogoutButton(onPress: logout)
        ],
      ),
    );
  }
}
