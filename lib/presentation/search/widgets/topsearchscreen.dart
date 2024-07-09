import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constsize.dart';
import 'package:netflix/presentation/widgets/screenidl2.dart';

class Screentopsearch extends StatelessWidget {
  const Screentopsearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtitlewidget(
          Title: 'Top Searches',
        ),
        kheight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.isError) {
              return const Center(child: Text("causing error"));
            } else if (state.idlelist.isEmpty) {
              return const Center(child: Text("search list is empty"));
            }

            return ListView.separated(
                itemBuilder: ((context, index) {
                  final movie = state.idlelist[index];
                  return Topsearchscreentile(
                      title: movie.title ?? 'no title provider',
                      imageUrl: '$imageAppendurl${movie.posterPath}');
                }),
                separatorBuilder: (context, index) => kheight20,
                itemCount: state.idlelist.length);
          },
        ))
      ],
    );
  }
}

class Topsearchscreentile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const Topsearchscreentile({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.4,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          )),
        ),
        kweight,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
        kweight,
        const Icon(
          CupertinoIcons.play_circle,
          color: Colors.white,
          size: 35,
        )

        // Container(
        //  decoration: BoxDecoration(
        //   image: DecorationImage(image: NetworkImage(images[0]), fit: BoxFit.cover)),
        //   )
      ],
    );
  }
}
