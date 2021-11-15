import 'package:fitness/wigets/tab_navigation_item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        fixedColor: Colors.black,
        backgroundColor: Colors.grey.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          for (int i = 0; i < TabNavigationItem.items.length; i++)
            BottomNavigationBarItem(
              icon: TabNavigationItem.items[i].icon,
              title: _currentIndex == i
                  ? const SizedBox()
                  : Container(),

            )
        ],
      ),
    );
  }
}
