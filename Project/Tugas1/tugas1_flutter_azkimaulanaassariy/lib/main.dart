import 'package:flutter/material.dart';
import 'package:tugas1_flutter_azkimaulanaassariy/pages/edit_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EditProfile(),
    );
  }
}