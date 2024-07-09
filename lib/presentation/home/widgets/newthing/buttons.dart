import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class iconbutton extends StatelessWidget {
  const iconbutton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: buttoncolorwhite,
          size: 23,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 14, color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    );
  }
}

class playbutton extends StatelessWidget {
  const playbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextButton.icon(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white)),
          onPressed: (() {}),
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 25,
          ),
          label: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Play',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )),
    );
  }
}
