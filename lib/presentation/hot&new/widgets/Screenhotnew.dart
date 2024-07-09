// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/hotandnew/hotandnew_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentation/hot&new/widgets/comingsoonwidget.dart';
import 'package:netflix/presentation/hot&new/widgets/everyoneswidget.dart';
import 'package:netflix/presentation/widgets/appbarwidget.dart';
import '../../../core/constsize.dart';

class Screenhotandnew extends StatelessWidget {
  const Screenhotandnew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(100),
                child: AppBar(
                    title: const Text("Hot & New",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
                    actions: [
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
                                  image: NetworkImage(image1),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      kweight
                    ],
                    bottom: TabBar(
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        labelStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        labelPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        tabs: const [
                          Text(
                            "🍿Coming soon",
                          ),
                          Text("👀 Everyones's watching")
                        ]))),
            body: const TabBarView(
                children: [ComingSoonList(), EveryOneWatchingList()])));
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(const Loaddataincomingsoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotandnewBloc>(context)
            .add(const Loaddataincomingsoon());
      },
      child: BlocBuilder<HotandnewBloc, HotandnewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(
              strokeWidth: 2,
            ));
          } else if (state.isError) {
            return const Center(child: Text('Something Went Wrong'));
          } else if (state.comingSoonList.isEmpty) {
            return const Center(child: Text('List NOT Found'));
          } else {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                final movie = state.comingSoonList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
                final _date = DateTime.parse(movie.releaseDate!);
                final formatteddate = DateFormat.yMMMMd('en_US').format(_date);
                return Comingsoonclass(
                    id: movie.id.toString(),
                    month: formatteddate
                        .split(' ')
                        .first
                        .substring(0, 3)
                        .toUpperCase(),
                    day: movie.releaseDate!.split('-')[2],
                    posterpath: '$imageAppendurl${movie.posterPath}',
                    moviename: movie.originalTitle ?? 'no title',
                    movieoverview: movie.overview ?? 'no overview');
              }),
              itemCount: state.comingSoonList.length,
            );
          }
        },
      ),
    );
  }
}

class EveryOneWatchingList extends StatelessWidget {
  const EveryOneWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(const Loaddataincomingsoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotandnewBloc>(context)
            .add(const Loaddataincomingsoon());
      },
      child: BlocBuilder<HotandnewBloc, HotandnewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const CircularProgressIndicator(
              strokeWidth: 1,
              color: Colors.black,
            );
          } else if (state.isError) {
            return const Text('error mahn');
          } else if (state.comingSoonList.isEmpty) {
            return const Text('everyones list is empty');
          } else {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 40),
              itemBuilder: ((context, index) {
                final tv = state.comingSoonList[index];

                return EveryoneWatchingwidget(
                    posterpath: '$imageAppendurl${tv.backdropPath}',
                    moviename: tv.title ?? 'no name',
                    movieoverview: tv.overview ?? 'no overview');
              }),
              itemCount: state.comingSoonList.length,
            );
          }
        },
      ),
    );
  }
}
