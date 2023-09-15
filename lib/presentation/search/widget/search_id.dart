import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtwo/application/core/constant.dart';
import 'package:newtwo/models/movies.dart';
import 'package:newtwo/presentation/search/screen_search.dart';
import 'package:newtwo/presentation/search/widget/searchresult.dart';
import '../../../models/api.dart';

final searchController = TextEditingController();

class Searchid extends StatefulWidget {
  const Searchid({super.key});

  @override
  State<Searchid> createState() => _SearchidState();
}

late Future<List<Movie>> nowPlayingMovies;

class _SearchidState extends State<Searchid> {
  @override
  void initState() {
    super.initState();
    nowPlayingMovies = Api().getnowPlayingMovies();
  }

  String searchContent = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          CupertinoSearchTextField(
            controller: searchController,
            backgroundColor: Colors.grey.withOpacity(0.4),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: const TextStyle(color: Colors.white),
            onChanged: (value) {
              setState(() {
                searchContent = value;
              });
            },
          ),
          kwith,
          FutureBuilder(
            future: nowPlayingMovies,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: searchContent.isEmpty
                      ? ScreenSearch(
                          snapshot: snapshot,
                        )
                      : SerachResult(value: searchContent),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ]),
      ),
    ));
  }
}
