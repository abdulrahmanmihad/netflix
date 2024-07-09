import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix/presentation/fast%20laugh/widgets/pageviewitems.dart';

import '../../../application/fastlaugh/fastlaugh_bloc.dart';

class Screenfastlaugh extends StatelessWidget {
  const Screenfastlaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<FastlaughBloc>(context).add(const Initialise());
      },
    );
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastlaughBloc, FastlaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const CircularProgressIndicator(
                strokeWidth: 2,
              );
            } else if (state.isError) {
              return const CircularProgressIndicator(
                strokeWidth: 5,
                color: Colors.red,
              );
            } else if (state.profilepic.isEmpty) {
              return const Text("heey wait a minute");
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.profilepic.length, (index) {
                  return Videolistiteminheritancewidget(
                      widget: Pageviewlist(
                          key: Key(index.toString()), index: index),
                      moviedata: state.profilepic[index]);
                }),
              );
            }
          },
        ),
      ),
    );
  }
}
