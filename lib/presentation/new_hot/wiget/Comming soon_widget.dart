import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtwo/application/core/colors.dart';

import '../../../application/core/constant.dart';
import '../../../media/video_wiget.dart';
import '../../home/custom_widget.dart';

class Comingsoonwidget extends StatelessWidget {
  const Comingsoonwidget({
    super.key, 
  });
    
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          height: 490,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                "11",
                style: TextStyle(color:kWhitecolors, fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    
                    'O   N   E      P   E  A   C    E',
                    style: TextStyle(
                      color: kWhitecolors,
                        fontSize: 25,
                        letterSpacing: -5,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Custombutton(
                        icon: Icons.alarm,
                        title: "Remind me",
                        iconsize: 20,
                        textSize: 10,
                      ),
                      kwith,
                      Custombutton(
                        icon: Icons.info,
                        title: "Info",
                        iconsize: 20,
                        textSize: 10,
                      ),
                      kwith,
                    ],
                  )
                ],
              ),
              knewHi,
          Text('Coming on Friday',style: TextStyle(color: kWhitecolors),),
              kwith,
              
              kheight,
               Text(
                'One Peace',
                style: TextStyle(fontWeight: FontWeight.bold,color: kWhitecolors),
              ),
              kwith,
              knewHi,
               Text(
                'One Piece" is a wildly popular and long-running Japanese manga and anime series created by Eiichiro Oda. The story follows Monkey D. Luffy, a young pirate with the ability to stretch his body like rubber after eating a Devil Fruit. Luffy sets out on an adventurous journey to find the ultimate treasure known as "One Piece" and become the Pirate King',
                style: TextStyle(
                  color: Colors.grey,
                  
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

