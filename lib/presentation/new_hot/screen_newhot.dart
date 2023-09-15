import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:newtwo/application/core/colors.dart';



import 'package:newtwo/presentation/new_hot/wiget/comming%20soon_widget.dart';
import 'package:newtwo/presentation/new_hot/wiget/every_ones.dart';

import '../../application/core/constant.dart';
import '../../models/api.dart';
import '../../models/movies.dart';
import '../../models/tv_series.dart';


class ScreeNewHot extends StatefulWidget {
  const ScreeNewHot({Key? key}) : super(key: key);

  @override
  State<ScreeNewHot> createState() => _ScreeNewHotState();
}
late Future<List<Movie>>  nowPlayingMovies;
late Future<List<TvSeries>> popularSeries;
class _ScreeNewHotState extends State<ScreeNewHot> {
  @override
   void initState() {
    super.initState();
    nowPlayingMovies = Api().getnowPlayingMovies();
    popularSeries = Api().getpopularSeries();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            
            preferredSize:  const Size.fromHeight(90),
            
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
                  



                  color: const Color.fromARGB(255, 169, 37, 37),
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
              SizedBox(
                child: FutureBuilder(
                  future: nowPlayingMovies,
                  builder:(context,snapshot ){
                   if(snapshot.hasError){
                    return Center(
                      child:Text(snapshot.error.toString()),
                    );
                   }
                   else if(snapshot.hasData){
                    return _buildcomingsoon(snapshot);
                   }
                   else{
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                   }
                  }
                ),
              ),
              SizedBox(
                child: FutureBuilder(
                  
                future:nowPlayingMovies,
                builder:(context,snapshot){
                  if(snapshot.hasError){
                return Center(
                  child: Text(snapshot.error.toString()),
                );
                  }
                  else if (snapshot.hasData){
                   return _buildEveryoneswatching(snapshot);
                  }else{
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }
              )
              )
            ],
          )),
    );
  }

  Widget _buildcomingsoon(AsyncSnapshot<List<Movie>> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data!.length,
      itemBuilder: (BuildContext context, index) => ComingsoonWidget(snapshot: snapshot, index: index),
    );
  }

  Widget _buildEveryoneswatching(AsyncSnapshot<List<Movie>> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data!.length,
      itemBuilder:(
        BuildContext context,index)=>
         EveryonceWaching(snapshot: snapshot, index: index),
        ) ;
  }
}
