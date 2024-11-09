import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class ImageData {
  final String imagePath;
  final String name;

  ImageData({
    required this.imagePath,
    required this.name
  });
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<String> entries = <String>[
    'Изумрудная тень',
    'Обсидиановый фолиант',
    'Эмблема рассечённой судьбы'];

  //final List<int> colorCodes = <int>[600, 500, 400, 300];
  List<ImageData> imageDataList = [
    ImageData(
      imagePath: "assets/viridescent-venerer.png",
      name: "Изумрудная тень"
    ),
    ImageData(
        imagePath: "assets/obsidian-codex.png",
        name: "Обсидиановый фолиант"
    ),
    ImageData(
        imagePath: "assets/emblem-of-severed-fate.png",
        name: "Эмблема рассечённой судьбы"
    ),
  ];

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
      body:ListView.separated(
          itemCount: imageDataList.length, // Set the number of items in the list
          separatorBuilder: (BuildContext context, int index) => const Divider(), // Add a divider between each item in the list
          itemBuilder: (BuildContext context, int index) {
            final imageData = imageDataList[index]; // Get the ImageData object at the current index
            return ListTile(
              leading: Image.asset(imageData.imagePath), // Display the image on the left side of the ListTile
              title: Text(imageData.name), // Display the name as the title of the ListTile
            );
          }
      ),


      // body: ListView(
      //   children: const[
      //     ListTile(
      //       trailing: SvgPicture.asset('assets/book.svg'),
      //       title: Text('Изумрудная тень'),
      //     ),
      //     ListTile(
      //       trailing: Image('assets/book.svg'),
      //       title: Text('Обсидиановый фолиант'),
      //     ),
      //     ListTile(
      //       trailing: ,
      //       title: Text('Эмблема рассечённой судьбы'),
      //     ),
      //   ],
      // )


      // ListView.separated(
      //     itemBuilder: (BuildContext context, int index) {
      //       return Container(
      //         height: 50,
      //         color: Colors.green,
      //         child: Center(
      //             child: Text('${entries[index]}')
      //         ),
      //       );
      //     },
      //     separatorBuilder: (BuildContext context, int index) =>
      //         const Divider(),
      //     itemCount: entries.length),


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
