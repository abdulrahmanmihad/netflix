import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constsize.dart';

import '../newthing/hot&newiconbuttom.dart';

class Comingsoonclass extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterpath;
  final String moviename;
  final String movieoverview;

  const Comingsoonclass(
      {Key? key,
      required this.id,
      required this.month,
      required this.day,
      required this.posterpath,
      required this.moviename,
      required this.movieoverview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              kheight,
              Text(month,
                  style: const TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 10)),
              Text(
                day,
                style: const TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kheight,
              Videowidget(posterpath: posterpath),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      moviename,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Hotnewiconbutton(
                      title: "Remind me", icon: Icons.notifications_none),
                  kweight,
                  const Hotnewiconbutton(title: "info", icon: Icons.info),
                ],
              ),
              kheight,
              Text(
                "Coming on $day $month ",
                style:
                    const TextStyle(color: Color.fromARGB(255, 191, 191, 191)),
              ),
              kheight,
              kheight20,
              Text(
                moviename,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight,
              Text(
                movieoverview,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
        ),
        kheight20,
        kheight20
      ],
    );
  }
}

class Videowidget extends StatelessWidget {
  const Videowidget({
    Key? key,
    required this.posterpath,
  }) : super(key: key);

  final String posterpath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: size.width - 50,
          height: size.height - 570,
          child: Image.network(
            posterpath,
            fit: BoxFit.cover,
            loadingBuilder:
                (BuildContext _, Widget child, ImageChunkEvent? progress) {
              if (progress == null) {
                return child;
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.black,
                  ),
                );
              }
            },
            errorBuilder: (BuildContext _, Object a, StackTrace? trace) {
              return const Center(
                child: Icon(
                  Icons.wifi_channel_sharp,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        Positioned(
          right: 0,
          bottom: 7,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_up_outlined,
                color: buttoncolorwhite,
                size: 30,
              )),
        ),
      ],
    );
  }
}
