import 'package:flutter/material.dart';


class NavigasiBar extends StatefulWidget {
  const NavigasiBar({super.key});


  @override
  _NavigasiBarState createState() => _NavigasiBarState();
}

class _NavigasiBarState extends State<NavigasiBar> {
  int _selectedIndex = 0;

  static const List<Widget> _page = <Widget>[
    Center(child: Text('Beranda')),
    Center(child: Text('Seris')),
    Center(child: Text('Film')),
  ];
  
  void _onNavBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Nav Bar')),
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Seris'),
          BottomNavigationBarItem(icon: Icon(Icons.local_movies_outlined), label: 'Film'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        onTap: _onNavBarTapped,
        
      )
    );
  }
}
