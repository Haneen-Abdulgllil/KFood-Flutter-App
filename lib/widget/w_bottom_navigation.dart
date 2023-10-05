
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onIndexChanged;

  const WidgetBottomNavigation({
    required this.currentIndex,
    required this.onIndexChanged,
    Key? key,
  }) : super(key: key);

  @override
    Widget build(BuildContext context) {
    //State class

    return 
    CurvedNavigationBar(
    backgroundColor: Colors.white,
    color: Colors.green, 
    index: currentIndex,
    items: const <Widget>[
      Icon(Icons.article, size: 25, color:Color.fromARGB(255, 255, 255, 255)),
      Icon(Icons.video_collection_rounded, size: 25, color:Color.fromARGB(255, 255, 255, 255)),
      Icon(Icons.favorite_rounded, size: 25, color:Color.fromARGB(255, 255, 255, 255)),
      Icon(CupertinoIcons.cloud_upload_fill, size: 25, color:Color.fromARGB(255, 255, 255, 255)),
    ],
    onTap: onIndexChanged,
    );
  }
  
}

  @override
  Widget build(BuildContext context) => throw UnimplementedError();
