import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/screenidl2.dart';

class newcard extends StatelessWidget {
  final String posterurl;
  const newcard({
    Key? key, required this.posterurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, top: 5),
        child: Container(
          width: 120,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(posterurl), fit: BoxFit.contain),
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }
}

class Maincard extends StatelessWidget {
  const Maincard({
    Key? key,
    required this.title,  required this.posterList,
  }) : super(key: key);
  final String title;
  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Searchtitlewidget(Title: title),
        ),
        LimitedBox(
            maxHeight: 180,
            child: 
              
                ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      posterList.length,
                      (index) =>  newcard(posterurl: posterList[index]),
                    ),
                  )
              
        ),
      ],
    );
  }
}
