import 'package:flutter/material.dart';

import '../../application/core/colors.dart';


class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,required this.icon,required this.title,this.iconsize=30,this.textSize=18,
  });
  final IconData icon;
  final String title;
  final double iconsize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(
          icon,
          color: kWhitecolors,
          size:iconsize,
        ),
        Text(
        title,
          style: TextStyle(
            color: kWhitecolors,
            fontSize: textSize,
          ),
        ),
      ],
    );
  }
}