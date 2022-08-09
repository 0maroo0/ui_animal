import 'package:flutter/material.dart';

class CustoumFlatButton extends StatelessWidget {
  void Function() onpressed;
  String text;
  // ignore: prefer_const_constructors_in_immutables
  CustoumFlatButton({Key? key, required this.onpressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onpressed,
      label: Row(
        children: [Text("$text"), Icon(Icons.arrow_forward)],
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
