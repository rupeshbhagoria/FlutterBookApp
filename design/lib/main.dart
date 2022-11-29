import 'package:design/Screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {

  runApp(Home());
}


class Home  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}
