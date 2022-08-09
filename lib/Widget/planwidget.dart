import 'package:animal_help_flutter/constant/listsub.dart';
import 'package:flutter/material.dart';

class planwidget extends StatelessWidget {
  const planwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Animal",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            "we love the animal",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),

      ///
      ///
      Container(
        alignment: Alignment.topLeft,
        child: Text(
          "Choose a plan",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Expanded(
        child: ListView.builder(
            itemCount: listsubAnimal.length,
            itemBuilder: ((context, i) {
              return Container(
                  padding: EdgeInsets.only(left: 35),
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("${listsubAnimal[i].image}"),
                          colorFilter: ColorFilter.mode(
                              Colors.black45, BlendMode.darken))),
                  child: Center(
                      child: Row(
                    children: [
                      Center(
                        child: Text(
                          "${listsubAnimal[i].sub}",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Center(
                        child: Text(
                          "${listsubAnimal[i].price}",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  )));
            })),
      ),
    ]);
  }
}
