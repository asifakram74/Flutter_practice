import 'package:flutter/material.dart';
import 'package:practice/onbordingScreens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    print("hi");
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBordingScreens()));
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
