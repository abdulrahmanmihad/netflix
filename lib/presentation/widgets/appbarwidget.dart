import 'package:flutter/material.dart';

import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constsize.dart';


const image1 =
    "https://www.themoviedb.org/t/p/w130_and_h195_bestv2/11keFudto4QrgrXChukexJwdHPe.jpg";

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          kweight,
          Text(title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
          const Spacer(),
          const Icon(
            Icons.cast,
            color: backgroundcolorwhite,
          ),
          kweight,
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(image1), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          kweight
        ],
      ),
    );
  }
}
