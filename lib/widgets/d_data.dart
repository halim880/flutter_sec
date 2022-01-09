import 'package:flutter/material.dart';

class TData extends StatelessWidget {
  final String value;
  const TData(
    this.value, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }
}
