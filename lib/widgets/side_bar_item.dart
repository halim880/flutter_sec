import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPress;
  final IconData icon;

  const SideBarItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedTileColor: Colors.white,
      iconColor: Colors.blueGrey[50],
      textColor: Colors.blueGrey[50],
      onTap: onPress,
      leading: Icon(icon),
      title: Text(title),
    );
  }
}
