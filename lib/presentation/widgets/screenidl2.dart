import 'package:flutter/material.dart';

class Searchtitlewidget extends StatelessWidget {
  const Searchtitlewidget({Key? key, required this.Title}) : super(key: key);
  final Title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
