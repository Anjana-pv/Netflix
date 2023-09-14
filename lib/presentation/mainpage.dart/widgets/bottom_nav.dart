import 'package:flutter/material.dart';


ValueNotifier<int>indexChangeNotifier = ValueNotifier(0);

class BottomNavigationwidget extends StatelessWidget {
  const BottomNavigationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
       builder: (context,int newindex,_){
    return  BottomNavigationBar(
      backgroundColor: Colors.black,
        currentIndex: newindex,
        onTap:(index){
        indexChangeNotifier.value=index;
       },
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      selectedItemColor:Colors.white,
      unselectedItemColor:Colors.grey,
      selectedIconTheme: const IconThemeData(
        color: Colors.white),
      items:const [
    
      BottomNavigationBarItem(
       
        icon:Icon(
          Icons.home
          ),
          label:"Home"
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.collections,
              ) ,label: "New & Hot"
              ),
              BottomNavigationBarItem(
            icon:Icon(
              Icons.emoji_emotions,
              ) ,label: "Fast Laughs"
              ),
              BottomNavigationBarItem(
            icon:Icon(
              Icons.search,
              ) ,label: "Search"
              ),
              BottomNavigationBarItem(
            icon:Icon(
              Icons.download,
              ) ,label: "Download"
              ),
              
    ],
     );
       }
    );
  
  
  }
}