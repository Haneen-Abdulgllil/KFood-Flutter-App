// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:app/constant/app_names.dart';
import 'package:app/views/home/v_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppName.name,
      debugShowCheckedModeBanner: false,
      home: ViewHome(),
    );
  }
}

