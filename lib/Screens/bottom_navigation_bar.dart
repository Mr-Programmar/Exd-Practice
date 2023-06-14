// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
//
// class Navigation_Bar extends StatefulWidget {
//   const Navigation_Bar({Key? key}) : super(key: key);
//
//   @override
//   State<Navigation_Bar> createState() => _Navigation_BarState();
// }
//
// class _Navigation_BarState extends State<Navigation_Bar> {
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: SnakeNavigationBar.color(
//         behaviour: snakeBarStyle,
//         snakeShape: snakeShape,
//         shape: bottomBarShape,
//         padding: padding,
//
//         ///configuration for SnakeNavigationBar.color
//         snakeViewColor: selectedColor,
//         selectedItemColor: snakeShape == SnakeShape.indicator ? selectedColor : null,
//         unselectedItemColor: Colors.blueGrey,
//
//         ///configuration for SnakeNavigationBar.gradient
//         //snakeViewGradient: selectedGradient,
//         //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
//         //unselectedItemGradient: unselectedGradient,
//
//         showUnselectedLabels: showUnselectedLabels,
//         showSelectedLabels: showSelectedLabels,
//
//         currentIndex: _selectedItemPosition,
//         onTap: (index) => setState(() => _selectedItemPosition = index),
//     items: [
//     BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'tickets'),
//     BottomNavigationBarItem(icon: Icon(CustomIcons.calendar), label: 'calendar'),
//     BottomNavigationBarItem(icon: Icon(CustomIcons.home), label: 'home'),
//     BottomNavigationBarItem(icon: Icon(CustomIcons.podcasts), label: 'microphone'),
//     BottomNavigationBarItem(icon: Icon(CustomIcons.search), label: 'search')
//     ],
//     ));
//   }
// }
