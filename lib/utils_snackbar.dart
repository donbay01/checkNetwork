// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';


class Utils {
  static void showTopSnackBar(
      String message,
      Color color,
      ) => showSimpleNotification(
    Text('Internet Connectivity Update'),
    subtitle: Text(message),
    background: color,
  );
}