import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constsize.dart';
import '../newthing/everyonesiconbutton.dart';

class EveryoneWatchingwidget extends StatelessWidget {
  final String posterpath;
  final String moviename;
  final String movieoverview;
  const EveryoneWatchingwidget(
      {Key? key,
      required this.posterpath,
      required this.moviename,
      required this.movieoverview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                moviename,
                style: textstyle,
              ),
              kheight,
              Text(movieoverview,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 88, 88, 88), fontSize: 14)),
              const SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: Image.network(posterpath),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 10,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.volume_up_outlined,
                              color: buttoncolorwhite,
                              size: 30,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 70,
                    height: 50,
                    child: Image.network(
                      "https://vignette.wikia.nocookie.net/lostinspace/images/7/76/Lost_in_Space_Netflix_Square_Logo.jpeg/revision/latest/scale-to-width-down/185?cb=20180414125352",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const everyonesiconbutton(
                      title: "Share", icon: CupertinoIcons.paperplane),
                  const everyonesiconbutton(
                      title: "My list", icon: CupertinoIcons.add),
                  const everyonesiconbutton(
                      title: "Play", icon: CupertinoIcons.play_arrow_solid)
                ],
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      );
    }
  }
}
