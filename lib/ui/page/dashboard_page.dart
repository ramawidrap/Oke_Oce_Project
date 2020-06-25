import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

import '../../Global.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DashboardPageState();
  }
}

class DashboardPageState extends State<DashboardPage> {
  String APPBAR_TITLE = "Waroenk";
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Beranda',
    ),
    Text("Agenda"),
    Text("Keranjang"),
    Text("Akun"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        APPBAR_TITLE = "Home";
      } else if (_selectedIndex == 1) {
        APPBAR_TITLE = "What's On";
      } else if (_selectedIndex == 2) {
        APPBAR_TITLE = "My Card";
      } else if (_selectedIndex == 3) {
        APPBAR_TITLE = "Profile";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: new Icon(
              Icons.access_alarm,
              color: Colors.black,
            ),
            onPressed: null),
        title: new Container(
          child: new Row(
            children: <Widget>[
              Global.getSearchWaroenkSearchBar(),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color(Global.OKE_OCE_MAIN_COLOR),
                ),
                onPressed: () {
                  print("your menu action here");
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: bmnav.BottomNav(
        iconStyle:
            bmnav.IconStyle(onSelectColor: Color(Global.OKE_OCE_MAIN_COLOR)),
        labelStyle: bmnav.LabelStyle(
            onSelectTextStyle: TextStyle(
                color: Color(Global.OKE_OCE_MAIN_COLOR),
                fontSize: 10,
                fontFamily: 'normal')),
        index: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          bmnav.BottomNavItem(Icons.home, label: "Beranda"),
          bmnav.BottomNavItem(Icons.calendar_today, label: "Agenda"),
          bmnav.BottomNavItem(Icons.shopping_basket, label: "Keranjang"),
          bmnav.BottomNavItem(Icons.account_circle, label: 'Akun'),
        ],
      ),
    );
  }

}
