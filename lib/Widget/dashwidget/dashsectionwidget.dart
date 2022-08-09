import 'package:animal_help_flutter/Widget/dashwidget/dashsliderwidget.dart';
import 'package:flutter/material.dart';

class sectionwidgetdash extends StatelessWidget {
  const sectionwidgetdash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: height * 0.5564,
      decoration: const BoxDecoration(
          color: Color(0xFFB98959),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Related To You",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Ubuntu",
              ),
            ),
          ),
        ),
        sliderdash(),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: const Text("Quick categories",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    image:
                        DecorationImage(image: AssetImage("assets/lion.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    image:
                        DecorationImage(image: AssetImage("assets/bear.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    image: DecorationImage(
                        image: AssetImage("assets/reptiles.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    image:
                        DecorationImage(image: AssetImage("assets/pets.png"))),
              ),
            )
          ],
        )
      ]),
    );
  }
}
