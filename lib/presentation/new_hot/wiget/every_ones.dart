
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtwo/media/video_wiget.dart';

import '../../../application/core/constant.dart';
import '../../home/custom_widget.dart';

class EveryonceWaching extends StatelessWidget {
  const EveryonceWaching({
    super.key,  required this.snapshot,
    required this.index,
  });
  final AsyncSnapshot snapshot;
  final int index;
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          '${snapshot.data![index].title}',
          style: const TextStyle( fontSize: 20, fontWeight: FontWeight.bold,),
        ),
        kwith,
        knewHi,
        Text(
            '${snapshot.data![index].overview}',
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        VideoWidget(snapshot: snapshot, index :index,),
        kheight,
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Custombutton(
              icon: Icons.share,
              title: "Share",
              iconsize: 25,
              textSize: 16,
            ),
            kwith,
            Custombutton(
              icon: Icons.add,
              title: "My List",
              iconsize: 25,
              textSize: 16,
            ),
            kwith,
            Custombutton(
              icon: Icons.play_arrow,
              title: "Play",
              iconsize: 25,
              textSize: 16,
            ),
            kwith,
          ],
        )
      ],
    );
  }
}
