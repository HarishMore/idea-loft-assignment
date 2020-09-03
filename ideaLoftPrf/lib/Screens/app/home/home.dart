import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ideaLoftPrf/Screens/app/home/home-page.dart';
import 'package:ideaLoftPrf/Screens/app/home/stat.dart';
import 'package:ideaLoftPrf/components/fab_bottom_app_bar.dart';
import 'package:ideaLoftPrf/screens/app/home/placeholder.dart';

import '../../../constants.dart';
import 'charts_widget.dart';

class Home extends StatefulWidget {
  // Home({Key key, this.title}) : super(key: key);

  // final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  String _lastSelected = 'TAB: 0';
  int currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    PlaceholderWidget(Colors.deepOrange),
    // ChartsScreen(Colors.green),
    Status(),
    PlaceholderWidget(Colors.lightBlue),
    PlaceholderWidget(Colors.amber)
  ];

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
      currentIndex = index;
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBarPlaceholder(
//        title: widget.title,
//        child: Text(widget.title),
//      ),
      body: _children[currentIndex], // new
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'A',
        color: Colors.grey,
        selectedColor: btnNavBarColor,
//        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: 'images/home.png'),
          FABBottomAppBarItem(iconData: 'images/credit_card.png'),
          FABBottomAppBarItem(iconData: 'images/charts.png'),
          FABBottomAppBarItem(iconData: 'images/timer.png'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(
          context), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildFab(BuildContext context) {
    return SizedBox(
      width: 75.0,
      height: 75.0,
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Send',
        backgroundColor: btnNavBarColor,
        child: ImageIcon(
          AssetImage('images/send.png'),
        ),
        elevation: 2.0,
      ),
    );
  }
}
