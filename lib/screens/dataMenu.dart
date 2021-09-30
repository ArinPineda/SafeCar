import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/screens/carData.dart';
import 'package:argon_flutter/screens/messengerData.dart';
import 'package:flutter/material.dart';

class DataMenu extends StatefulWidget {
  @override
  DataMenuState createState() => DataMenuState();
}

class DataMenuState extends State<DataMenu> {
  int _selectIndex = 0;
  List<Widget> _widgetsOptions = [CarData(), MessengerData()];

  void _itemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datos"),
        backgroundColor: ArgonColors.primary,
      ),
      body: _widgetsOptions[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car_filled_rounded),
              label: 'Vehiculo',
              backgroundColor: ArgonColors.primary),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_cal_rounded),
              label: 'Asegurado por',
              backgroundColor: ArgonColors.primary),
        ],
        backgroundColor: ArgonColors.primary,
        currentIndex: _selectIndex,
        selectedItemColor: ArgonColors.success,
        onTap: _itemTapped,
      ),
    );
  }
}
