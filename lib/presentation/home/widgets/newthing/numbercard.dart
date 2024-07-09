import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/screenidl2.dart';

class Numbercard extends StatelessWidget {
  const Numbercard({Key? key, required this.index, required this.numberimage}) : super(key: key);
  final int index;
  final String numberimage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 35,
              height: 100,
            ),
            Container(
              width: 150,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(numberimage), fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 13,
          child: BorderedText(
            strokeColor: const Color.fromARGB(255, 255, 255, 255),
            strokeWidth: 3.0,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontSize: 110,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Newnumbercard extends StatelessWidget {
  const Newnumbercard({
    Key? key, required this.posterimage,
  }) : super(key: key);
  final List<String> posterimage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Searchtitlewidget(Title: "Top 10 movies"),
        ),
        LimitedBox(
            maxHeight: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterimage.length,
                (index) => Numbercard(numberimage: posterimage[index],
                  index: index,
                ),
              ),
            )),
      ],
    );
  }
}
