import 'package:flutter/material.dart';
import 'package:flutter_sec/helpers/helpers.dart';

class SideBarHeader extends StatelessWidget {
  final String username;
  const SideBarHeader({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: marginAll(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Icon(
              Icons.person,
              size: 40,
              color: Colors.white,
            ),
          ),
          vSpace(10),
          Text(
            username,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
