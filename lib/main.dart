import 'package:animal_help_flutter/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              bodySmall: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.w300),
              titleLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.bold))),
      home: const Home(),
    );
  }
}
