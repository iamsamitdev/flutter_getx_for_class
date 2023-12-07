// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/detail.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Feed'),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              Get.to(()=> Detail());
            }, 
            child: Text('Go to Detail')
          )
        ],
      ),
    );
  }
}