import 'package:flutter/material.dart';
import 'package:newtwo/models/contence.dart';

import '../application/core/constant.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget( {
    super.key, required this.snapshot, required this.index,
  });
  final AsyncSnapshot snapshot;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network('${Constant.imagepath}${snapshot.data![index].backDropPath}',
           ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: const Color.fromARGB(31, 12, 11, 11),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
