import 'package:argon_flutter/screens/searchCar.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

class InspectorMenu extends StatefulWidget {
  @override
  InspectorMenuState createState() => InspectorMenuState();
}

class InspectorMenuState extends State<InspectorMenu> {
  int _selectIndex = 0;
  List<Widget> _widgetsOptions = [
    SearchCar(),
    SearchCar()
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  void _goLogins(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, "/logins", (route) => false);
  }

  Future<void> _singOut() async {
    _goLogins(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("SEIDA"),
        backgroundColor: ArgonColors.primary,
        actions: <Widget>[
          Builder(builder: (BuildContext context){
            return IconButton(
              onPressed: () async{
                await _singOut();
              }, 
              icon: Icon(Icons.keyboard_tab_outlined));
          })
        ],
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
              label: 'Inspeccionar Vehiculo',
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