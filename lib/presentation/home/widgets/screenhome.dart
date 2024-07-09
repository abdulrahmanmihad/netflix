import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/Home/home_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constsize.dart';
import 'package:netflix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix/presentation/fast%20laugh/widgets/Screen_fastlaugh.dart';
import 'package:netflix/presentation/home/widgets/newthing/buttons.dart';
import 'package:netflix/presentation/home/widgets/newthing/numbercard.dart';
import 'package:netflix/presentation/home/widgets/newthing/newcard.dart';
import 'package:netflix/presentation/search/widgets/mainsearch.dart';
import 'package:netflix/presentation/widgets/appbarwidget.dart';

const List homeimage = [
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/74xTEgt7R36Fpooo50r9T25onhq.jpg",
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iwnQ1JH1wdWrGYkgWySptJ5284A.jpg"
];

class Screenhome extends StatelessWidget {
  Screenhome({Key? key}) : super(key: key);
  final ValueNotifier<bool> scrolldirectionlistener = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<HomeBloc>(context).add(const Gethomeresult());
      },
    );
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HomeBloc>(context).add(const Gethomeresult());
      },
      child: Scaffold(
          body: ValueListenableBuilder(
              valueListenable: scrolldirectionlistener,
              builder: (BuildContext context, index, _) {
                return NotificationListener<UserScrollNotification>(
                  onNotification: ((notification) {
                    final ScrollDirection direction = notification.direction;
                    if (direction == ScrollDirection.reverse) {
                      scrolldirectionlistener.value = false;
                    } else if (direction == ScrollDirection.forward) {
                      scrolldirectionlistener.value = true;
                    }
                    return true;
                  }),
                  child: Stack(
                    children: [
                      // ignore: prefer_const_literals_to_create_immutables
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          if (state.isLoading) {
                            return const Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            );
                          } else if (state.isError) {
                            return const Center(child: Text("error ok"));
                          } else if (state.pastyearmovielist.isEmpty) {
                            return const Center(child: Text("list is empty"));
                          } else if (state.sounthindianlist.isEmpty) {
                            return const Center(child: Text("list is empty"));
                          } else if (state.tensedramaslist.isEmpty) {
                            return const Center(child: Text("list is empty"));
                          } else if (state.trendindnowlist.isEmpty) {
                            return const Center(child: Text("list is empty"));
                          } else if (state.toptenlist.isEmpty) {
                            return const Center(child: Text("list is ok"));
                          } else {
                            final _realesedinpastyear =
                                state.pastyearmovielist.map(
                              (e) {
                                return '$imageAppendurl${e.posterPath}';
                              },
                            ).toList();
                            _realesedinpastyear.shuffle();
                            final _trandingnow = state.trendindnowlist.map((e) {
                              return '$imageAppendurl${e.posterPath}';
                            }).toList();
                            _trandingnow.shuffle();
                            final _sounthindianlist =
                                state.sounthindianlist.map((e) {
                              return '$imageAppendurl${e.posterPath}';
                            }).toList();
                            _sounthindianlist.shuffle();
                            final _tensedramaslist =
                                state.tensedramaslist.map((e) {
                              return '$imageAppendurl${e.posterPath}';
                            }).toList();
                            _tensedramaslist.shuffle();

                            final _toptenlist = state.toptenlist.map((e) {
                              return '$imageAppendurl${e.posterPath}';
                            }).toList();

                            return ListView(children: [
                              Fordisablemode(
                                imageur: _toptenlist,
                              ),
                              kheight20,
                              Maincard(
                                title: "Realesed in Past Years",
                                posterList: _realesedinpastyear,
                              ),
                              kheight,
                              Maincard(
                                title: "Tranding Now",
                                posterList: _trandingnow,
                              ),
                              kheight,
                              Newnumbercard(
                                posterimage: _toptenlist.sublist(0, 10),
                              ),
                              kheight,
                              Maincard(
                                title: "Tense dramas",
                                posterList: _tensedramaslist,
                              ),
                              kheight,
                              Maincard(
                                  title: "South Indian Movies",
                                  posterList: _sounthindianlist),
                              kheight
                            ]);
                          }
                        },
                      ),
                      scrolldirectionlistener.value == true
                          ? Container(
                              height: 120,
                              width: double.infinity,
                              color: const Color.fromARGB(128, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  kheight,
                                  Row(
                                    children: [
                                      Image.network(
                                        "https://cdn.vox-cdn.com/thumbor/rtSiql54y52-Lh1Y2yJt2oLfcdc=/39x0:3111x2048/1400x933/filters:focal(39x0:3111x2048):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.cast,
                                        color: backgroundcolorwhite,
                                      ),
                                      kweight,
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    image: NetworkImage(image1),
                                                    fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Text("TV Shows"),
                                        const Text("Movies"),
                                        Directionality(
                                            textDirection: TextDirection.ltr,
                                            child: DropdownButton(
                                                dropdownColor:
                                                    const Color.fromARGB(
                                                        255, 0, 0, 0),
                                                hint: const Text(
                                                  'Category',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                underline: const Text(''),
                                                items: [
                                                  DropdownMenuItem(
                                                      onTap: () {},
                                                      value: 1,
                                                      child: const Text(
                                                        'Kids',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                  DropdownMenuItem(
                                                     value: 2,
                                                    child: const Text(
                                                      'Tv&Shows',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  
                                                    onTap: () {
                                                     
                                                    },
                                                  ),
                                                  const DropdownMenuItem(
                                                      value: 3,
                                                      child: Text(
                                                        'FOR YOU',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                ],
                                                onChanged: (value) {
                                                  if (value == 1) {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                ScreenDownloads())));
                                                                
                                                  }
                                                  else  if (value == 2) {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                Screensearch())));
                                                  }
                                                   else  if (value == 3) {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                const Screenfastlaugh())));
                                                  }
                                                }))
                                      ])
                                ],
                              ),
                            )
                          : kheight,
                    ],
                  ),
                );
              })),
    );
  }
}

class Fordisablemode extends StatelessWidget {
  const Fordisablemode({
    Key? key,
    required this.imageur,
  }) : super(key: key);
  final List<String> imageur;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageur[0]), fit: BoxFit.cover)),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            iconbutton(
              title: "My List",
              icon: Icons.add,
            ),
            
            playbutton(),
            iconbutton(title: "Info", icon: Icons.info_outline),
          ],
        ),
       
      ],
    );
  }
}
