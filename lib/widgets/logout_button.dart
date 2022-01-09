import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback onPress;
  const LogoutButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: const Icon(
        Icons.logout_outlined,
        color: Colors.amber,
      ),
    );
  }
}
