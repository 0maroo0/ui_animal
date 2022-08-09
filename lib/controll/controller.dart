import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class controlller extends GetxController {
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController(
      viewportFraction: 0.8,
      initialPage: 6,
    );
    // TODO: implement onInit
    super.onInit();
  }
}
