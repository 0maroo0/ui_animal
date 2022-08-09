import 'package:animal_help_flutter/constant/listdashboard.dart';
import 'package:animal_help_flutter/controll/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sliderdash extends GetView<controlller> {
  const sliderdash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(controlller());
    return Container(
      height: 200,
      child: PageView.builder(
          controller: controller.pageController,
          pageSnapping: true,
          itemCount: listdash.length,
          itemBuilder: ((context, i) {
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.darken),
                      fit: BoxFit.cover,
                      image: AssetImage(listdash[i].image))),
              child: Text(
                listdash[i].title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            );
          })),
    );
  }
}
