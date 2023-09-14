import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newtwo/application/core/colors.dart';
import 'package:newtwo/application/core/constant.dart';
import 'package:newtwo/models/api.dart';
import 'package:newtwo/models/movies.dart';
import 'package:newtwo/models/tv_series.dart';
import 'package:newtwo/presentation/home/backgrund_image.dart';
import 'package:newtwo/presentation/home/future.dart';
import 'widgets/maintitle_card.dart';

ValueNotifier<bool> scroll = ValueNotifier(true);

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  late Future<List<Movie>> trandingMovies;
  late Future<List<Movie>> topRatedMovies;
  late Future<List<Movie>> upComingMovies;
  late Future<List<Movie>> popularMovies;
  late Future<List<Movie>> nowPlayingMovies;
  late Future<List<TvSeries>> topRatedSeries;

  @override
  void initState() {
    super.initState();
    trandingMovies = Api().getTrending();
    topRatedMovies = Api().getpopularMovies();
    upComingMovies = Api().getUpcomingMovies();
    popularMovies = Api().getpopularMovies();
    nowPlayingMovies = Api().getnowPlayingMovies();
    topRatedSeries = Api().getTopRatedSeries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scroll,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scroll.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scroll.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children:  [
                        
                         buildFutureBuilder(
                          future: trandingMovies,
                          builder: (context, snapshot) {
                            return Backgroungcard(snapshot: snapshot,);
                          },
                        ),

                       

                        
                        buildFutureBuilder(
                          future: trandingMovies,
                          builder: (context, snapshot) {
                            return Maintitlecard(
                                title: 'Released in the past year',
                                snapshot: snapshot);
                          },
                        ),
                        buildFutureBuilder(
                          future: topRatedMovies,
                          builder: (context, snapshot) {
                            return Maintitlecard(
                                title: 'Trending Now',
                                snapshot: snapshot);
                          },
                        ),
                        buildFutureBuilder(
                          future: upComingMovies,
                          builder: (context, snapshot) {
                            return Maintitlecard(
                                title: 'Tense Dramas',
                                snapshot: snapshot);
                          },
                        ),
                        buildFutureBuilder(
                          future: nowPlayingMovies,
                          builder: (context, snapshot) {
                            return Maintitlecard(
                                title: 'Popular Movies',
                                snapshot: snapshot);
                          },
                        ),
                      ],
                    ),
                    scroll.value == true
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 80,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456',
                                      width: 60,
                                      height: 60,
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.cast,
                                        size: 30, color: Colors.white),
                                    kwith,
                                    Container(
                                      width: 30,
                                      height: 30,
                                      color: const Color.fromARGB(
                                          255, 169, 37, 37),
                                    ),
                                    kwith,
                                  ],
                                ),
                                const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        " TV Shows",
                                        style: TextStyle(
                                            color: kWhitecolors,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Movies",
                                          style: TextStyle(
                                              color: kWhitecolors,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                      Text('Catogoaries',
                                          style: TextStyle(
                                              color: kWhitecolors,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ])
                              ],
                            ),
                          )
                        : kheight,
                  ],
                ),
              );
            }));
  }
}
