import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constsize.dart';
import 'package:netflix/presentation/widgets/screenidl2.dart';

class Seacrhscreenmovies extends StatelessWidget {
  const Seacrhscreenmovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtitlewidget(Title: 'Movies & TV'),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                shrinkWrap: true,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                childAspectRatio: 1 / 1.4,
                children: List.generate(state.searchresultlist.length, (index) {
                  final movie = state.searchresultlist[index];
                  return maincard(
                    imageurl: movie.posterimageurl,
                  );
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

class maincard extends StatelessWidget {
  final String imageurl;
  const maincard({Key? key, required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageurl), fit: BoxFit.cover),
          borderRadius: BorderRadiusDirectional.circular(7)),
    );
  }
}
