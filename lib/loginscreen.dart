import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController cont1 = TextEditingController();
  TextEditingController cont2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //_____________________________Container for For Text
          Container(
            height: 60,
            // color: Colors.orangeAccent,
            child: const Center(
              child: Text(
                'Login Screen',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.teal,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 50,
          ),
          //_____________________________Container for UserName
          Container(
            height: 60,
            color: Colors.blue,
            child: TextField(
              controller: cont1,
              decoration: const InputDecoration(
                // label: Text('User Name'),
                hintText: 'Enter User Name',
                prefixIcon: Icon(Icons.person, color: Colors.white),
                hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          //_____________________________Container for Password

          Container(
            height: 60,
            color: Colors.blue,
            child: TextField(
              controller: cont2,
              decoration: const InputDecoration(
                // label: Text('User Name'),
                hintText: 'Enter Password',
                prefixIcon: Icon(Icons.lock, color: Colors.white),
                hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          //_____________________________Container for Button

          Container(
            height: 60,
            width: 200,
            color: Colors.blue,
            child: TextButton(
                onPressed: () {
                  Get.to(const HomeScreen());
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          )
        ]),
      ),
    );
  }
}
