import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtwo/application/core/colors.dart';

import '../../../application/core/constant.dart';

class Numbercard extends StatelessWidget {
  const Numbercard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kradious,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.themoviedb.org/t/p/w220_and_h330_face/kGENInUWI9tRVg4ae8XAVgAWpEi.jpg'),
                  )),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: kWhitecolors,
            child: Text(
              "${index +1}",
              style: const TextStyle(
                fontSize: 120,

                color: kbackgroundBlack,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor:Colors.red ),
            ),
          ),
        ),
      ],
    );
  }
}
