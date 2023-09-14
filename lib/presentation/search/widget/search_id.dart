import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtwo/application/core/constant.dart';
import 'package:newtwo/presentation/search/screen_search.dart';


class Searchid extends StatelessWidget {
  const Searchid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
            CupertinoSearchTextField(
              backgroundColor:Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              
              suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
              ),
              
              kwith,
              Expanded(
             child: ScreenSearch(),
              ),
          ]),
        ),
      )
    );
  }
}