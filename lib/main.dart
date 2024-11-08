import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color(0xFF6200EE),
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white.withOpacity(.60),
                selectedFontSize: 14,
                unselectedFontSize: 13,
                onTap: (value) {
                  // Respond to item press.
                },
                items: [
                  BottomNavigationBarItem(
                      label: 'арты',
                      icon: SvgPicture.asset(
                        'assets/chalice.svg',
                        colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.srcIn),
                        semanticsLabel: 'art',
                        width: 30,
                        height: 30,
                      )),
                  BottomNavigationBarItem(
                      label: 'персы',
                      icon: SvgPicture.asset(
                        'assets/player.svg',
                        colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.srcIn),
                        semanticsLabel: 'art',
                        width: 30,
                        height: 30,
                      )),
                  BottomNavigationBarItem(
                      label: 'оружие',
                      icon: SvgPicture.asset(
                        'assets/sword.svg',
                        colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.srcIn),
                        semanticsLabel: 'art',
                        width: 30,
                        height: 30,
                      )),
                  BottomNavigationBarItem(
                      label: 'боссы',
                      icon: SvgPicture.asset(
                        'assets/boss.svg',
                        colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.srcIn),
                        semanticsLabel: 'art',
                        width: 30,
                        height: 30,
                      )),
                  BottomNavigationBarItem(
                      label: 'опыт',
                      icon: SvgPicture.asset(
                        'assets/book.svg',
                        colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.srcIn),
                        semanticsLabel: 'art',
                        width: 30,
                        height: 30,
                      )),
                ],
              ),
            )));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
