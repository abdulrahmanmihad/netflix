import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constsize.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

import '../../../application/fastlaugh/fastlaugh_bloc.dart';

const List image = [
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg",
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6JjfSchsU6daXk2AKX8EEBjO3Fm. jpg"
];

class Videolistiteminheritancewidget extends InheritedWidget {
  final Widget widget;
  final Downloads moviedata;
  const Videolistiteminheritancewidget(
      {Key? key, required this.widget, required this.moviedata})
      : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant Videolistiteminheritancewidget oldWidget) {
    return oldWidget.moviedata != moviedata;
  }

  static Videolistiteminheritancewidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<Videolistiteminheritancewidget>();
  }
}

class Pageviewlist extends StatelessWidget {
  const Pageviewlist({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final posterpath =
        Videolistiteminheritancewidget.of(context)!.moviedata.posterPath;
    final VideoUrl = dummyvideoUrl[index % dummyvideoUrl.length];
    return Stack(
      children: [
        Videoplayerwidget(videourl: VideoUrl, onChanged: (bool) {}),
        Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 0, bottom: 5),
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(149, 0, 0, 0),
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_up_outlined,
                        color: buttoncolorwhite,
                        size: 30,
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    backgroundImage: posterpath == null
                        ? null
                        : NetworkImage('$imageAppendurl$posterpath'),
                    backgroundColor: const Color.fromARGB(132, 0, 0, 0),
                    radius: 30,
                  ),
                  kheight20,
                  ValueListenableBuilder(
                    valueListenable: likedvideoidnotifier,
                    builder: (BuildContext context, Set<int> likednewlist,
                        Widget? _) {
                      final _index = index;
                      if (likednewlist.contains(_index)) {
                        return GestureDetector(
                          onTap: () {
                            likedvideoidnotifier.value.remove(_index);
                            likedvideoidnotifier.notifyListeners();
                          },
                          child: const fasticonbutton(
                              icon: CupertinoIcons.heart_solid, title: ""),
                        );
                      }
                      return GestureDetector(
                        onTap: () {
                          likedvideoidnotifier.value.add(_index);
                          likedvideoidnotifier.notifyListeners();
                          //BlocProvider.of<FastlaughBloc>(context)
                          //.add(Likedlist(id: index));
                        },
                        child: const fasticonbutton(
                            icon: CupertinoIcons.heart, title: "like"),
                      );
                    },
                  ),
                  const fasticonbutton(icon: Icons.add, title: "add"),
                  GestureDetector(
                    onTap: () {
                      final moviename =
                          Videolistiteminheritancewidget.of(context)
                              ?.moviedata
                              .title;
                      if (moviename != null) {
                        Share.share(moviename);
                      }
                    },
                    child: const fasticonbutton(
                        icon: CupertinoIcons.paperplane, title: "Share"),
                  ),
                  const fasticonbutton(
                      icon: CupertinoIcons.play, title: "Play"),
                  kheight
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class fasticonbutton extends StatelessWidget {
  const fasticonbutton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: buttoncolorwhite,
          ),
          Text(title)
        ],
      ),
    );
  }
}

class Videoplayerwidget extends StatefulWidget {
  final String videourl;
  final void Function(bool isplaying) onChanged;
  const Videoplayerwidget(
      {Key? key, required this.videourl, required this.onChanged})
      : super(key: key);

  @override
  State<Videoplayerwidget> createState() => _VideoplayerwidgetState();
}

class _VideoplayerwidgetState extends State<Videoplayerwidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videourl);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
