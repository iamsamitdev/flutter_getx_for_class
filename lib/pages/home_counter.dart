// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/app_controller.dart';
import 'package:get/get.dart';

class HomeCounter extends StatelessWidget {
  const HomeCounter({super.key});

  // create object from AppController
  static final _controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        actions: [
          Text(DateTime.now().toString()),
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${_controller.counter.value}', 
            style: TextStyle(fontSize: 120),)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}