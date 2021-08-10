import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primarycolor = Colors.orange;
Color secondarycolor = Colors.white24;

double getDeviceHeight(BuildContext context) {
  final double deviceHeight = MediaQuery.of(context).size.height;
  return deviceHeight;
}

double getDeviceWidth(BuildContext context) {
  final double deviceWidth = MediaQuery.of(context).size.height;
  return deviceWidth;
}
