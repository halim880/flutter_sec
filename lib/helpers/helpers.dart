import 'package:flutter/cupertino.dart';

SizedBox vSpace(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox hSpace(double height) {
  return SizedBox(
    width: height,
  );
}

EdgeInsets marginAll(double value) {
  return EdgeInsets.all(value);
}

EdgeInsets marginRight(double value) {
  return EdgeInsets.only(right: value);
}

EdgeInsets paddingAll(double value) {
  return EdgeInsets.all(value);
}
