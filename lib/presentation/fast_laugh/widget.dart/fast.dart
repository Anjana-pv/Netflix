import 'package:flutter/material.dart';
import 'package:newtwo/application/core/constant.dart';

class VideoList extends StatelessWidget {
  final int index;
  const VideoList({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
        color: Colors.accents[index%Colors.accents.length],
     
      ),
        Align(
          alignment: Alignment.bottomCenter,
          child:Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: const Color.fromARGB(31, 12, 11, 11),
                child: IconButton(
                  onPressed:(){},
                 icon: const Icon( Icons.volume_mute,
                 ),
                 ),
              ),
              kheight,
            
              //right side  
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://www.themoviedb.org/t/p/w220_and_h330_face/nt5U1MgFcyxCYA6cssNKtnn2FsF.jpg'),
                ),
              kheight,
              VideoAction(icons: Icons.emoji_emotions, title: 'lol'),
              kheight,
                VideoAction(icons: Icons.add, title: 'My List'),
                 kheight,
                  VideoAction(icons: Icons.share, title: 'Share'),
                   kheight,
                    VideoAction(icons: Icons.play_arrow, title: 'Play'),
                   
              
              
              
              
              
              ],
            )         
              ],
          ),
        ),
      )
      ],
    );
  }
}
class VideoAction extends StatelessWidget {
  final IconData icons;
  final String title;

  const VideoAction({super.key ,required this.icons,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icons,
        color: Colors.white,
        size: 30,),
        Text(title),
      ],
    );
  }
}