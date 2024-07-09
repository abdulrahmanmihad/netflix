import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class Hotnewiconbutton extends StatelessWidget {
  const Hotnewiconbutton({
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
        Icon(icon, color: buttoncolorwhite, size: 16),
        Text(
          title,
          style: const TextStyle(
              fontSize: 10, color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ],
    );
  }
}
