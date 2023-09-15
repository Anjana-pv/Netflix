import 'package:flutter/material.dart';
import 'package:newtwo/presentation/mainpage.dart/widgets/screen_mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
  scaffoldBackgroundColor: Colors.black 
      ),
  
            home: ScreeMainPage(),
    );
  }
}
