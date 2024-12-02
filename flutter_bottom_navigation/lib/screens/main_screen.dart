import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/screens/favorite_screen.dart';
import 'package:flutter_bottom_navigation/screens/home_screen.dart';
import 'package:flutter_bottom_navigation/screens/profile_screen.dart';
import 'package:flutter_bottom_navigation/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screenOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            //Item Pertama
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            //Item Kedua
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            //Item Ketiga
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            //Item Keempat
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple.shade200,
        ));
  }
}
