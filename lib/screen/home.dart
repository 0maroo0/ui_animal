import 'package:animal_help_flutter/Widget/HomeWidget.dart';
import 'package:animal_help_flutter/Widget/floatbuttonnext.dart';
import 'package:animal_help_flutter/Widget/floatbuttonnext.dart';
import 'package:animal_help_flutter/screen/planscreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/elephant.jpg",
              fit: BoxFit.fitHeight,
              height: height,
              width: double.infinity,
            ),
            HomeWidget()
          ],
        ),
      ),
      floatingActionButton: CustoumFlatButton(
          onpressed: () {
            Get.to(() => PlanScreen());
          },
          text: "next"),
    );
  }
}
