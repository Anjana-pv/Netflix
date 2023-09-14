import 'package:flutter/material.dart';
import 'package:newtwo/presentation/fast_laugh/widget.dart/fast.dart';

class ScreenFasrLaugh extends StatelessWidget {
  const ScreenFasrLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: 
            List.generate(10, (index){
              return VideoList(index: index,);
            }),
          
        )
      ),
    );
  }
}