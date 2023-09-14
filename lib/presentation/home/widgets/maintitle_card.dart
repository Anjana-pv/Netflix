import 'package:flutter/cupertino.dart';
import 'package:newtwo/application/core/colors.dart';

import '../../search/widget/main_card.dart';


class Maintitlecard extends StatelessWidget {
  const Maintitlecard({
    super.key, required this.title,
         required this.snapshot,
  });
final String title;
final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
      Text(title,style: const TextStyle(color: kWhitecolors),),
      LimitedBox(
        maxHeight: 200,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) =>  Maincard(snapshot: snapshot,index: index),
            )),
      )
    ]);
  }
}
