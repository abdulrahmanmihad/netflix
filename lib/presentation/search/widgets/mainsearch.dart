import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constsize.dart';
import 'package:netflix/domain/core/debounce/debounce.dart';
import 'package:netflix/presentation/search/widgets/searchscreen1.dart';
import 'package:netflix/presentation/search/widgets/topsearchscreen.dart';

class Screensearch extends StatelessWidget {
  Screensearch({Key? key}) : super(key: key);
  final _debouncer = Debouncer(milliseconds: 1 * 1000);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const initialized());
    });
    return Scaffold(
     
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            CupertinoSearchTextField(
              prefixIcon: const Icon(CupertinoIcons.search,
                  color: Color.fromARGB(255, 132, 132, 132)),
              suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                  color: Color.fromARGB(255, 216, 53, 53)),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                _debouncer.run(() {
                  BlocProvider.of<SearchBloc>(context)
                      .add(searchMovie(movieQuery: value));
                });
              },
            ),
            kheight,
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchresultlist.isEmpty) {
                  return const Screentopsearch();
                } else {
                  return const Seacrhscreenmovies();
                }
              },
            ))
          ],
        ),
      )),
    );
  }
}
