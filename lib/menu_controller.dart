import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  static void controlMenu() {
    if (!scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}
