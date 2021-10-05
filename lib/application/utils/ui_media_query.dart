import 'package:flutter/material.dart';

double widthPercent(double percent, BuildContext context) {
  var totalWidth = MediaQuery.of(context).size.width;
  return totalWidth * (percent / 100);
}

double heightPercent(double percent, BuildContext context) {
  var totalHeight = MediaQuery.of(context).size.height;
  return totalHeight * (percent / 100);
}
