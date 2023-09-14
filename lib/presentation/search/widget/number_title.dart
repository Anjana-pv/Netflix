import 'package:flutter/material.dart';
import 'package:newtwo/application/core/colors.dart';

import '../../home/widgets/number_card.dart';

class NumberTitle extends StatelessWidget {
  const NumberTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text("Top 10 TV Shows in India Today" ,style: TextStyle(color: kWhitecolors),),
                  LimitedBox(
                    maxHeight: 200,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          10,
                          (index) => Numbercard(index: index,),
                        )),
                  )
                ],
              );
          
          
  }
}
