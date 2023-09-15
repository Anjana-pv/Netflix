import 'package:flutter/material.dart';
import 'package:newtwo/models/contence.dart';
import '../../application/core/colors.dart';
import 'custom_widget.dart';

class Backgroungcard extends StatelessWidget {
  const Backgroungcard({
    super.key,
    required this.snapshot,
  });
  final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(  
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))), 
            width: double.infinity,
            height: 600,
            child: Image.network('${Constant.imagepath}${snapshot.data[1].posterPath}',fit: BoxFit.contain,),
          
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Custombutton(icon: Icons.add, title: "My List"),
                playbutton(),
                const Custombutton(icon: Icons.info, title: "Info"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // playbutton() {}
}

TextButton playbutton() {
  return TextButton.icon(
    onPressed: () {},
    style:
        ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhitecolors)),
    icon: const Icon(
      Icons.play_arrow,
      size: 29,
      color: kbackgroundBlack,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'Play',
        style: TextStyle(fontSize: 20, color: kbackgroundBlack),
      ),
    ),
  );
}
