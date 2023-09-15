import 'package:flutter/material.dart';
import 'package:newtwo/application/core/colors.dart';
import 'package:newtwo/application/core/constant.dart';
import 'package:newtwo/models/api.dart';
import 'package:newtwo/models/contence.dart';
import 'package:newtwo/models/movies.dart';

import '../widgets/appbar_widget.dart';

class ScreenDownloads extends StatefulWidget {
  const ScreenDownloads({
    super.key,
  });

  @override
  State<ScreenDownloads> createState() => _ScreenDownloadsState();
}

final widget = [
  const _SmartDownload(),
  Section2(trandingMovies: trandingMovies),
  const Section3(),
];

late Future<List<Movie>> trandingMovies;

class _ScreenDownloadsState extends State<ScreenDownloads> {
  @override
  void initState() {
  
    super.initState();
    trandingMovies = Api().getTrending();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(title: 'Downloads'),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (ctx, index) => widget[index],
            separatorBuilder: (ctx, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: widget.length));
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kWhitecolors,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                color: kbackgroundBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownload extends StatelessWidget {
  const _SmartDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwith,
        Icon(
          Icons.settings,
          color: kWhitecolors,
        ),
        kwith,
        Text('Smart Downloads'),
      ],
    );
  }
}

// ignore: must_be_immutable
class Section2 extends StatelessWidget {
  Section2({super.key, required this.trandingMovies});
  Future<List<Movie>> trandingMovies;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Download for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhitecolors,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          "We will download a personalized selection of \n movies and shows for you, so there is \n always something to watch on your \n device. ",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.35,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              SizedBox(
                child: FutureBuilder(
                  future: trandingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return DownloadsImagewiget(
                        index: 0,
                        snapshot: snapshot,
                        margin: const EdgeInsets.only(
                          left: 170,
                        ),
                        angle: 25,
                        size: Size(
                          size.width * 0.47,
                          size.width * 0.63,
                        ),
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
              SizedBox( 
                child: FutureBuilder(
                  future: trandingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return DownloadsImagewiget(
                        index: 1,
                        snapshot: snapshot,
                        margin: const EdgeInsets.only(
                          right: 170,
                        ),
                        angle: -25,
                        size: Size(size.width * 0.47, size.width * 0.63),
                      );
                    } else {
                      return const CircularProgressIndicator(); 
                    }
                  },
                ),
              ),
              SizedBox(
                child: FutureBuilder(
                  future: trandingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return DownloadsImagewiget( 
                        index: 2,
                        snapshot: snapshot,
                        radius: 20,
                        margin: const EdgeInsets.only(bottom: 4),
                        size: Size(
                          size.width * 0.52,
                          size.width * 0.70,
                        ),
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
              


            ],
          ),
        ),
      ],
    );
  }
}

class DownloadsImagewiget extends StatelessWidget {
  const DownloadsImagewiget({
    super.key,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
    required this.snapshot, required this.index,
  });

  final AsyncSnapshot snapshot;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle / 180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            margin: margin,
            width: size.width,
            height: size.width,
            decoration: BoxDecoration(
                // color: Colors.white30,
                image: DecorationImage(
                    image: NetworkImage(
              '${Constant.imagepath}${snapshot.data![index].posterPath}',
            ))),
          ),
        ),
      ),
    );
  }
}
