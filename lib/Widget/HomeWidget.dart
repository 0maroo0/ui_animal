import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Animal",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            "we love the animal",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Spacer(),
        Padding(
            padding: const EdgeInsets.only(
                top: 200, right: 35, left: 35, bottom: 20),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Ready to Watch?",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const TextSpan(text: '\n'),
              TextSpan(
                text:
                    "A plant is a global leader in real life entertainment serving a passionate audience of superfans around the world with content that inspire. Infroms and entertains",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const TextSpan(text: '\n'),
              const TextSpan(text: '\n'),
              TextSpan(
                text: "Start",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ]))),
      ],
    );
  }
}
