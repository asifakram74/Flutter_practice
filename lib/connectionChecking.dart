import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:practice/main.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionChecking extends StatelessWidget {
  ConnectionChecking({super.key});

  String status = "Waiting....";
  Connectivity _connectivity = Connectivity();

  void CheckConnectivity() async {
    var connectionResult = await _connectivity.checkConnectivity();

    if (connectionResult == ConnectivityResult.mobile) {
      status = "Mobile Data";
    } else if (connectionResult == ConnectivityResult.wifi) {
      status = "Wifi";
    } else {
      status = "Not Connected";
    }
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Connection Checking')),
      body: Scaffold(),
    );
  }
}
