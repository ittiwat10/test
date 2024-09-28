import 'package:flutter/material.dart';
import 'package:test/screen/addLandUse.dart';
import 'package:test/screen/addNewPlant.dart';
import 'package:test/screen/homescreen.dart';
import 'package:test/screen/search.dart';
import 'package:test/screen/viewAndEdit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class listScreen extends StatefulWidget {
  const listScreen({super.key});

  @override
  State<listScreen> createState() => _listScreenState();
}

class _listScreenState extends State<listScreen> {
  int _selectedIndex = 0;

  final _screens = [
    const homeScreen(),
    const addNewPlant(),
    const AddlandUse(),
    const viewAndEdit(),
    const search()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 166, 215, 167),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house, size: 18),
              label: 'Homescreen'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.leaf, size: 18),
              label: 'Add Plant'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.handFist, size: 18),
              label: 'Add Use'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.penToSquare, size: 18),
              label: 'View & Edit'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 18),
              label: 'Search'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
