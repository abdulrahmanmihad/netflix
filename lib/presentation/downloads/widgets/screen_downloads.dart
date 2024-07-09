import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constsize.dart';

import '../../widgets/appbarwidget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _widgets = [const _Smart_downloads(), const Section1(), const Section2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: 'Downloads')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemBuilder: ((context, index) => _widgets[index]),
              separatorBuilder: (ctx, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              itemCount: _widgets.length),
        ));
  }
}

class Section1 extends StatelessWidget {
  const Section1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getdownloadsimages());
    });

    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        kweight,
        kheight,
        const Text(
          'Introducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kweight,
        kheight,
        const Text(
          'We"ll download a personalised selection of movies and shows for you,so theres always something to watch on your device',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 82, 81, 81),
          ),
        ),
        kweight,
        BlocBuilder<DownloadsBloc, Downloadsstate>(
          builder: (context, state) {
            if (state.downloads.isEmpty) {
              return const CircularProgressIndicator();
            }
            return SizedBox(
                width: size.width,
                height: size.width,
                child: state.isloading
                    ? const CircularProgressIndicator()
                    : Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          const CircleAvatar(
                            radius: 130,
                            backgroundColor: Color.fromARGB(255, 37, 37, 37),
                          ),
                          downloadsimageobject(
                            imagesList:
                                '$imageAppendurl${state.downloads[0].posterPath}',
                            margin:
                                const EdgeInsets.only(left: 125, bottom: 20),
                            angle: 22,
                            size: Size(size.width * 0.44, size.height * 0.25),
                          ),
                          downloadsimageobject(
                            imagesList:
                                '$imageAppendurl${state.downloads[1].posterPath}',
                            margin:
                                const EdgeInsets.only(right: 125, bottom: 20),
                            angle: -22,
                            size: Size(size.width * 0.44, size.height * 0.25),
                          ),
                          downloadsimageobject(
                            imagesList:
                                '$imageAppendurl${state.downloads[2].posterPath}',
                            margin: const EdgeInsets.only(top: 10),
                            size: Size(size.width * 0.4, size.height * 0.28),
                          )
                        ],
                      ));
          },
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: MaterialButton(
            minWidth: 500,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: buttoncolor,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: buttoncolorwhite,
            onPressed: () {},
            child: const Text(
              'See What you can download',
              style: TextStyle(
                  color: Color.fromARGB(255, 16, 16, 16),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _Smart_downloads extends StatelessWidget {
  const _Smart_downloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        kweight,
        kheight,
        Icon(
          Icons.settings,
          color: iconcolors,
        ),
        SizedBox(width: 5),
        Text('smart downloads')
      ],
    );
  }
}

class downloadsimageobject extends StatelessWidget {
  const downloadsimageobject({
    Key? key,
    required this.imagesList,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imagesList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 8, 8, 8),
            image: DecorationImage(
                image: NetworkImage(imagesList), fit: BoxFit.cover)),
      ),
    );
  }
}
