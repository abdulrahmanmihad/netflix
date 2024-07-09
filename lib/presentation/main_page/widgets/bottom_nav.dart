import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

ValueNotifier<int> currentchangenotifier = ValueNotifier(0);

// ignore: must_be_immutable
class BotttomNavScreen extends StatelessWidget {
  const BotttomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentchangenotifier,
        builder: (BuildContext context, int newindex, _) {
          return BottomNavigationBar(
            currentIndex: newindex,
            onTap: (index) {
              currentchangenotifier.value = index;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundcolor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections_bookmark), label: 'hot&new'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: 'fast laugh'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: 'downloads'),
            ],
          );
        });
  }
}
