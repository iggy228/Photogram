import 'package:flutter/material.dart';
import 'package:photo_gram/screens/create_screen.dart';
import 'package:photo_gram/screens/home_screen.dart';
import 'package:photo_gram/screens/profile_screen.dart';
import 'package:photo_gram/screens/search_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  AppBar homeAppBar() {
    return AppBar(
      title: Text('Photogram'),
    );
  }

  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState(homeAppBar());
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _currentIndex = 0;
  Widget _main = HomeScreen();
  AppBar? _appBar;

  _NavigationBarScreenState(AppBar appbar) {
    _appBar = appbar;
  }

  void changeScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (_currentIndex == 0) {
      _appBar = widget.homeAppBar();
      _main = HomeScreen();
    }
    if (_currentIndex == 1) {
      _appBar = null;
      _main = SearchScreen();
    }
    if (_currentIndex == 2) {
      _appBar = null;
      _main = CreateScreen();
    }
    if (_currentIndex == 3) {
      _appBar = null;
      _main = ProfileScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: _appBar,
      body: SafeArea(
        child: _main
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).accentColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) => changeScreen(index),
        items: const <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'home',
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'search',
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.add),
            label: 'add',
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle_rounded),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
