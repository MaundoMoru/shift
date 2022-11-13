import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shift/blogs.dart';
import 'package:shift/chats.dart';
import 'package:shift/users.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String? uid;

  bool isSearching = false;

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Blogs(),
    const Home(),
    const Users(),
  ];

  void _getSharedPrefs() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    setState(() {
      uid = _prefs.getString('uid');
    });
  }

  @override
  void initState() {
    super.initState();
    _getSharedPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.grey.shade300
              : Colors.grey.shade300.withOpacity(0.05),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).accentColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Blogs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: 'Members',
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //     },
      //     child: const Icon(Icons.add)),
    );
  }
}
