import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/imagePickupScreen.dart';
import 'package:practice/loginscreen.dart';

import 'connectionChecking.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text('Home Screen', style: TextStyle(fontSize: 25))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.yellow[100],
                ),
                child: const Center(
                  child: Text(
                    'Image Picking Screen',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              onTap: () {
                Get.to(() => ImagePickingScreen());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                ),
                child: const Center(
                  child: Text(
                    'Connection Checking Screen',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              onTap: () {
                Get.to(() => ConnectionChecking());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                ),
                child: const Center(
                  child: Text(
                    'Login Screen',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              onTap: () {
                Get.to(() => LoginScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
