import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix/presentation/fast%20laugh/widgets/Screen_fastlaugh.dart';
import 'package:netflix/presentation/home/widgets/screenhome.dart';
import 'package:netflix/presentation/hot&new/widgets/Screenhotnew.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';

import 'package:netflix/presentation/search/widgets/mainsearch.dart';

class Mainpagescreen extends StatelessWidget {
  Mainpagescreen({Key? key}) : super(key: key);

  final _pages = [
    Screenhome(),
    const Screenhotandnew(),
    const Screenfastlaugh(),
    Screensearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: ValueListenableBuilder(
          valueListenable: currentchangenotifier,
          builder: (BuildContext context, int index, _) {
            return _pages[index];
          }),
      bottomNavigationBar: const BotttomNavScreen(),
    );
  }
}
