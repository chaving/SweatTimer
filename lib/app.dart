import 'package:flutter/material.dart';
import 'package:sweat_timer/common/util/fonts.dart';
import 'package:sweat_timer/timer/f_timer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: FontsFamily.giantsRegular),
      home: Scaffold(
        appBar: AppBar(
          title: Text('타이틀'),
          backgroundColor: Colors.green,
        ),
        body: const TimerView(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'more',
            ),
          ],
        ),
      ),
    );
  }
}
