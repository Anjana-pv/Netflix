import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newtwo/application/core/colors.dart';
import 'package:newtwo/application/core/constant.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    Key? key,
  required this.title,
  }):super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      kwith,
      Text(title,
      style: GoogleFonts.montserrat().copyWith(  fontSize: 35,
     color: kWhitecolors ),

      ),
         const Spacer(),
      const Icon(
        Icons.cast,
        size: 30,
      color:Colors.white),
     kwith,
      Container(
        width:30,
        height: 30,
        color:const Color.fromARGB(255, 154, 21, 21),
      )
    ],);
  }
}