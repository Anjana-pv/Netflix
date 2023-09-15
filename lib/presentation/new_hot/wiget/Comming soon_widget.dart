import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtwo/application/core/colors.dart';
import 'package:intl/intl.dart';
import '../../../application/core/constant.dart';
import '../../../media/video_wiget.dart';

import '../../home/custom_widget.dart';

class ComingsoonWidget extends StatelessWidget {
  const ComingsoonWidget({
    super.key,
    required this.snapshot,
    required this.index,
  });
  final AsyncSnapshot snapshot;
  final int index;
  @override
  Widget build(BuildContext context) {
    String date = '${snapshot.data![index].releaseDate}';
    List<String> dateParts = date.split('-');
    final DateTime dateSplit = DateTime.parse(date);
    final month = DateFormat('MMM').format(dateSplit);
    final day = DateFormat('EEEE').format(dateSplit);
    Size size = MediaQuery.of(context).size;
    
    return Row(
      children: [
        SizedBox(
          height: 490,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                month,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                dateParts[2].toString(),
                style: const TextStyle(
                    color: kWhitecolors,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
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
              VideoWidget(
                snapshot: snapshot, index: index,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${snapshot.data![index].title}',
                    style: const TextStyle(
                        color: kWhitecolors,
                        fontSize: 25,
                        letterSpacing: -5,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Row(
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
              Text(
                'Coming on $day',
                style: TextStyle(color: kWhitecolors),
              ),
              kwith,

              kheight,
              //  Text(

              //   style: TextStyle(fontWeight: FontWeight.bold,color: kWhitecolors),
              // ),
              kwith,
              knewHi,
              Text(
                '${snapshot.data![index].overview}',
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
