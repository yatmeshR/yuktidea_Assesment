import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color colors;
  final dynamic size;
  final FontWeight weight;

  const MyText({super.key,required this.text,required this.colors,required this.size,required this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colors,
          fontSize: size,
          fontWeight: weight ),
    );
  }
}



