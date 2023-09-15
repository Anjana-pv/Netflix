import 'package:flutter/material.dart';
import 'package:newtwo/application/core/constant.dart';
import 'package:newtwo/models/api.dart';
import 'package:newtwo/models/contence.dart';
import 'package:newtwo/presentation/search/widget/titile.dart';
const imageUrl =
    'https://www.themoviedb.org/t/p/w220_and_h330_face/cLUeNjCHs8q4crMTyywflohSD8w.jpg';

class SerachResult extends StatelessWidget {
  const SerachResult({super.key, required this.value});
final String value;
  
  @override
  Widget build(BuildContext context) {
     Future<List> searchMovies=Api().search(value);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTop(title: 'Movies & TV'),
        kheight,
        FutureBuilder(
          future: searchMovies,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 9,
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1.4,
                  children: List.generate(
                    20,
                    (index) {
                      return MainCard(index: index,snapshot: snapshot,);
                    },
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.snapshot, required this.index});
 final AsyncSnapshot snapshot;
 final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('${Constant.imagepath}${snapshot.data![index].posterPath}'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
