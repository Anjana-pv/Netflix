import 'package:flutter/material.dart';

import '../application/core/constant.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(tempimg, fit: BoxFit.cover),
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
