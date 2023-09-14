
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtwo/media/video_wiget.dart';

import '../../../application/core/constant.dart';
import '../../home/custom_widget.dart';

class EveryonceWaching extends StatelessWidget {
  const EveryonceWaching({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          'Friends',
          style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold,),
        ),
        kwith,
        knewHi,
        Text(
          'One Piece" is a wildly popular and long-running Japanese manga and anime series created by Eiichiro Oda. The story follows Monkey D. Luffy, a young pirate with the ability to stretch his body like rubber after eating a Devil Fruit. Luffy sets out on an adventurous journey to find the ultimate treasure known as "One Piece" and become the Pirate King',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        VideoWidget(),
        kheight,
        Row(
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
