import 'package:design_project/config.dart';
import 'package:design_project/home.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.locationPermission();
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}
