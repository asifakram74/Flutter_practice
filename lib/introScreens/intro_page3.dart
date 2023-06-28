import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
          child: Text(
        'Introduction Page 3',
        style: TextStyle(
          fontSize: 25,
        ),
      )),
    );
  }
}
