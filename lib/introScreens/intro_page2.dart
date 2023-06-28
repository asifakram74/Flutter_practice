import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(
          child: Text(
        'Introduction Page 2',
        style: TextStyle(
          fontSize: 25,
        ),
      )),
    );
  }
}
