import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final Widget view;
  const PageContent(this.view, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: view,
    );
  }
}
