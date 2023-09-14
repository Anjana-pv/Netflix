import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:newtwo/application/core/colors.dart';

import 'package:newtwo/presentation/new_hot/wiget/Comming%20soon_widget.dart';
import 'package:newtwo/presentation/new_hot/wiget/every_ones.dart';

import '../../application/core/constant.dart';


class ScreeNewHot extends StatelessWidget {
  const ScreeNewHot({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            
            preferredSize:  Size.fromHeight(90),
            
            child: AppBar(
              backgroundColor: Colors.black,
              title: const Text(
                "New & Hot",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwith,
                Container(

                  width: 30,
                  height: 10,
                  



                  color: Color.fromARGB(255, 169, 37, 37),
                ),
                kwith,
              ],
              bottom: TabBar(
                labelColor: kbackgroundBlack,
                unselectedLabelColor: kWhitecolors,
                isScrollable: true,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                tabs: const [
                  Tab(
                    text: "🍿 Coming soon",
                  ),
                  Tab(
                    text: "👀 Everyone's watching",
                  ),
                ],
              ),
            ),
          ),
          
          body: TabBarView(
            children: [
              _buildcomingsoon(),
              _buildEveryoneswatching(),
            ],
          )),
    );
  }
 
  Widget _buildcomingsoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => const Comingsoonwidget(),
    );
  }

  Widget _buildEveryoneswatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder:(
        BuildContext context,index)=>
        const EveryonceWaching(),
        ) ;
  }
}
