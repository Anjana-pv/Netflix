
import 'package:flutter/cupertino.dart';
import 'package:newtwo/application/core/colors.dart';





class SearchTop extends StatelessWidget {
  final String title;

 const SearchTop({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
     title,
      style: const TextStyle(
        color: kWhitecolors,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}