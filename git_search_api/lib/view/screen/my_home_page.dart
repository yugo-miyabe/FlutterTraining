import 'package:flutter/material.dart';
import 'package:git_search_api/view/widget/favorites_widget.dart';
import 'package:git_search_api/view/widget/repository_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomBarIndex = 0;
  final _pages = <Widget>[
    const RepositoryWidget(),
    const FavoritesWidget(),
  ];

  final _title = <String>[
    'Search',
    'Favorite',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _bottomBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_title[_bottomBarIndex]),
      ),
      body: _pages[_bottomBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomBarIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Repository',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
