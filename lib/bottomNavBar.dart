import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav Bar'),
      ),
      // body: Center(
      //   child: _pages.elementAt(_selectedIndex),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF1E1F26),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'арты',
                icon: SvgPicture.asset(
                  'assets/chalice.svg',
                  colorFilter:
                      ColorFilter.mode(Color(0xFFE5E2CA), BlendMode.srcIn),
                  semanticsLabel: 'art',
                  width: 30,
                  height: 30,
                )),
            BottomNavigationBarItem(
                label: 'персы',
                icon: SvgPicture.asset(
                  'assets/player.svg',
                  colorFilter:
                      ColorFilter.mode(Color(0xFFE5E2CA), BlendMode.srcIn),
                  semanticsLabel: 'art',
                  width: 30,
                  height: 30,
                )),
            BottomNavigationBarItem(
                label: 'оружие',
                icon: SvgPicture.asset(
                  'assets/sword.svg',
                  colorFilter:
                      ColorFilter.mode(Color(0xFFE5E2CA), BlendMode.srcIn),
                  semanticsLabel: 'art',
                  width: 30,
                  height: 30,
                )),
            BottomNavigationBarItem(
                label: 'боссы',
                icon: SvgPicture.asset(
                  'assets/boss.svg',
                  colorFilter:
                      ColorFilter.mode(Color(0xFFE5E2CA), BlendMode.srcIn),
                  semanticsLabel: 'art',
                  width: 30,
                  height: 30,
                )),
            BottomNavigationBarItem(
                label: 'опыт',
                icon: SvgPicture.asset(
                  'assets/book.svg',
                  colorFilter:
                      ColorFilter.mode(Color(0xFFE5E2CA), BlendMode.srcIn),
                  semanticsLabel: 'art',
                  width: 30,
                  height: 30,
                )),
          ]),
    );
  }
}
