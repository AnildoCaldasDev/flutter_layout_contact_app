import 'package:app_layout_contact/android/android.app.dart';
import 'package:app_layout_contact/ios/ios.app.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

void main() {
  if (Platform.isIOS) {
    runApp(IOSApp());
  } else {
    runApp(AndroidApp());
  }
}
