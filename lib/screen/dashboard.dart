import 'package:animal_help_flutter/Widget/dashwidget/dashsectionwidget.dart';
import 'package:animal_help_flutter/constant/listdashboard.dart';
import 'package:animal_help_flutter/controll/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dashboard extends GetView<controlller> {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Get.put(controlller());

    return Scaffold(
      backgroundColor: const Color(0xFFB98959),
      body: SafeArea(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: height * 0.9666666666,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/elephant.jpg"))),
            child: Column(children: [
              const Text(
                "Welcome to New Animal",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: height * 0.21,
              ),
              sectionwidgetdash(),
            ]),
          ),
        ]),
      ),
    );
  }
}
