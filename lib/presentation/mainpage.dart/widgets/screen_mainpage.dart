import 'package:flutter/material.dart';
import 'package:newtwo/presentation/home/screen_home.dart';
import 'package:newtwo/presentation/downloads/screen_download.dart';
import 'package:newtwo/presentation/fast_laugh/screen_fast.dart';
import 'package:newtwo/presentation/mainpage.dart/widgets/bottom_nav.dart';
import 'package:newtwo/presentation/new_hot/screen_newhot.dart';

import 'package:newtwo/presentation/search/widget/search_id.dart';

class ScreeMainPage extends StatelessWidget {
 ScreeMainPage({super.key, });

 
 final _pages =[
   ScreenHome(),
 ScreeNewHot(),
  const ScreenFasrLaugh(),
  const Searchid(),
   ScreenDownloads(),
 ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier,builder: (context,int index,_) {
          return  _pages[index];
        }),
      ) ,
        
      
     bottomNavigationBar: const BottomNavigationwidget(),
    );
  }
}