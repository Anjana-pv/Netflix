
import 'package:flutter/cupertino.dart';
import 'package:newtwo/models/contence.dart';

import '../../../application/core/constant.dart';

class Maincard extends StatelessWidget {
   const Maincard({
    super.key, required this.snapshot, required this.index,
  });
   final AsyncSnapshot snapshot;
   final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
     width:150 ,
     height: 250,
  
     decoration: BoxDecoration(
       borderRadius: kradious,
       image: DecorationImage(
        fit: BoxFit.contain,
         image: NetworkImage(
           '${Constant.imagepath}${snapshot.data![index].posterPath}'), )),
            
    );
  }
}