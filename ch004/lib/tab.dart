import 'package:flutter/dtd.dart'


import 'package:flutter/material.dart';class TabBarTest extends StatefulWidget {
  const TabBarTest({super.key});

  @override
  State<TabBarTest> createState() => _TabBarTestState();
}

class _TabBarTestState extends State<TabBarTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab'),
            backgroundColor: Colors.cyan,
            bottom: TabBar(
              tabs:<Widget> [
                Tab(
                  icon: Icon[Icons.tag_faces]
                ),
                Tab(
                  text: '메뉴 2',
                ),
                Tab(
                  icon: Icon(Icons.info),
                  text: '메뉴 3',
                )
              ],
            ),
          ),
        ),
    );
  }
}
