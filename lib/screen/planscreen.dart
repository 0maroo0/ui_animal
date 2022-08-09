import 'package:animal_help_flutter/Widget/floatbuttonnext.dart';
import 'package:animal_help_flutter/Widget/planwidget.dart';
import 'package:animal_help_flutter/constant/listsub.dart';
import 'package:animal_help_flutter/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB98959),
      body: SafeArea(child: planwidget()),
      floatingActionButton: CustoumFlatButton(
          onpressed: () {
            Get.to(() => dashboard());
          },
          text: "Let's go"),
    );
  }
}
