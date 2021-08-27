import 'package:argon_flutter/screens/loginInspector.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

class LoginsPage extends StatefulWidget {
  @override
  LoginsPageState createState() => LoginsPageState();
}

class LoginsPageState extends State<LoginsPage> {
  int _selectIndex = 0;
  List<Widget> _widgetsOptions = [
    LoginInspector(),
    LoginInspector()
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetsOptions[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: 'Inspector',
              backgroundColor: ArgonColors.primary),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Cliente',
              backgroundColor: ArgonColors.primary),
        ],
        currentIndex: _selectIndex,
        selectedItemColor: ArgonColors.success,
        onTap: _itemTapped,
      ),
    );
  }

}