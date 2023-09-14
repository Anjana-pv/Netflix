import 'package:flutter/material.dart';
import 'package:newtwo/application/core/constant.dart';
import 'package:newtwo/presentation/search/widget/titile.dart';

const imageUrl ='https://www.themoviedb.org/t/p/w220_and_h330_face/cLUeNjCHs8q4crMTyywflohSD8w.jpg';

class SerachResult extends StatelessWidget {
  const SerachResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SearchTop(title: 'Movies & TV'),
        kheight,
        Expanded(
          child: GridView.count(
          shrinkWrap:true,
          crossAxisSpacing: 9,
          mainAxisSpacing: 9,

        crossAxisCount: 3,
        childAspectRatio: 1/1.4,
        children: List.generate(
          20,
          (index){ 
            return  MainCard();
          },
        
        ),
        ),
        ),
      ],
    );
    
    
  }
}
class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      image:DecorationImage(
        
        image:NetworkImage(imageUrl
        ),
        fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}