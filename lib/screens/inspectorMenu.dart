import 'package:argon_flutter/screens/getCarData.dart';
import 'package:argon_flutter/screens/lostKey.dart';
import 'package:argon_flutter/screens/searchCar.dart';
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

class InspectorMenu extends StatefulWidget {
  @override
  InspectorMenuState createState() => InspectorMenuState();
}

class InspectorMenuState extends State<InspectorMenu> {
  int _selectIndex = 0;
  List<Widget> _widgetsOptions = [
    GetCarData(),
    SearchCar(),
    LostKey()
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        title: "SEIDA",
      ),
      body: _widgetsOptions[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind_rounded),
              label: 'Introduccir llave',
              backgroundColor: ArgonColors.primary),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'Buscar Vehiculo',
              backgroundColor: ArgonColors.primary),
          BottomNavigationBarItem(
              icon: Icon(Icons.cancel_sharp),
              label: 'Deshabilitar llave',
              backgroundColor: ArgonColors.primary),
        ],
        backgroundColor: ArgonColors.primary,
        currentIndex: _selectIndex,
        selectedItemColor: ArgonColors.white,
        onTap: _itemTapped,
      ),
    );
  }

}