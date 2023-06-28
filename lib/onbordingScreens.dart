import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/homeScreen.dart';
import 'package:practice/introScreens/intro_page1.dart';
import 'package:practice/introScreens/intro_page2.dart';
import 'package:practice/introScreens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingScreens extends StatefulWidget {
  const OnBordingScreens({super.key});

  @override
  State<OnBordingScreens> createState() => _OnBordingScreensState();
}

class _OnBordingScreensState extends State<OnBordingScreens> {
  final PageController _controller = PageController();
  bool OnLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              OnLastPage = (index == 2);
            });
          },
          children: const [IntroPage1(), IntroPage2(), IntroPage3()],
        ),
        Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text('Skip')),
                SmoothPageIndicator(controller: _controller, count: 3),
                OnLastPage
                    ? InkWell(
                        onTap: () {
                          Get.to(() => HomeScreen());
                        },
                        child: const Text('Done'),
                      )
                    : InkWell(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOutQuint);
                        },
                        child: const Text(' Next')),
              ],
            ))
      ]),
    );
  }
}
