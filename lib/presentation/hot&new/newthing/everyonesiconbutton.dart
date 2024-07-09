import 'package:flutter/cupertino.dart';

import '../../../core/colors.dart';

class everyonesiconbutton extends StatelessWidget {
  const everyonesiconbutton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Icon(icon, color: buttoncolorwhite, size: 23),
          Text(
            title,
            style: const TextStyle(
                fontSize: 10, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ],
      ),
    );
  }
}
