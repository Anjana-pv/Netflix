import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtwo/application/core/colors.dart';
import 'package:newtwo/application/core/constant.dart';
import 'package:newtwo/models/contence.dart';
import 'package:newtwo/presentation/search/widget/titile.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/3QfQYECgu6DX5UUWCBvv1Fl0BAJ.jpg";

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key, required this.snapshot});
   final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTop(title:'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) =>  TopSearchTile(index: index,snapshot: snapshot),
            separatorBuilder: (ctx, index) => knewHi,
            itemCount: 20,
          ),
        ),
        
      ],
    );
  }
}


class TopSearchTile extends StatelessWidget {
  const TopSearchTile({super.key, required this.snapshot, required this.index});
   final AsyncSnapshot snapshot;
   final int index;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
            width: screenWidth * 0.35,
            height: 60,
            decoration:  BoxDecoration( 
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('${Constant.imagepath}${snapshot.data![index].backDropPath}'),
              ),
            ),
            ),
            const Expanded(child: Text("movie",style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            ),
            ),
            ),
         const CircleAvatar(
          backgroundColor:kWhitecolors,
          radius:25,
          child: CircleAvatar(
          backgroundColor:kbackgroundBlack ,
          radius: 23,
          child:Center(
          child:Icon(
            CupertinoIcons.play_fill,
            color:Colors.white,
          ),
            ),

          
         )
         ),
      ],
    );
  }
}
