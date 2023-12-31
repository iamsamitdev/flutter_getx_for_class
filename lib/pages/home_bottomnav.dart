// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/app_controller.dart';
import 'package:flutter_getx/pages/chat.dart';
import 'package:flutter_getx/pages/feed.dart';
import 'package:flutter_getx/pages/profile.dart';
import 'package:get/get.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<AppController>(
      init: AppController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text('GetX Demo'),
        ),
        body: SafeArea(
          child: IndexedStack(
            index: controller.navIndex.value,
            children: [
              Feed(),
              Chat(),
              Profile()
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: controller.navIndex.value,
          onDestinationSelected: ((index) {
            controller.navIndex.value = index;
          }),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.rss_feed),
              label: 'Feed',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]
        ),
      )
    );
  }
}