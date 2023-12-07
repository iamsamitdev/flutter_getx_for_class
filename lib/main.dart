// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_getx/pages/home_bottomnav.dart';
// import 'package:flutter_getx/pages/home_counter.dart';
import 'package:flutter_getx/pages/home_kiosk.dart';
// import 'package:flutter_getx/pages/product_gridview.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: HomeKiosk(),
    );
  }
}