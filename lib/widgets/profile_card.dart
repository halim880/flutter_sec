import 'package:flutter/material.dart';
import 'package:flutter_sec/helpers/helpers.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginAll(8),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8 / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
