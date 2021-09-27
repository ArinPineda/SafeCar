import 'package:argon_flutter/screens/getCarData.dart';
import 'package:argon_flutter/screens/lostKey.dart';
import 'package:argon_flutter/screens/searchCar.dart';
import 'package:argon_flutter/widgets/bottom-app-bar-inspector.dart';
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart';

class InspectorMenu extends StatefulWidget {
  @override
  InspectorMenuState createState() => InspectorMenuState();
}

class InspectorMenuState extends State<InspectorMenu> {
  
  TextEditingController _genericBarcode;
  double _margin = 3.0;
  int _selectIndex = 0;
  bool _showFab = true;

  List<Widget> _widgetsOptions = [
    GetCarData(),
    LostKey()
  ];

  void onChangedTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  void _showModal(String type) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: new Icon(Icons.badge_sharp),
              title: new Text('Escanear documento de identidad'),
              onTap: () {
                Navigator.pop(context);
                if (type == "informacion") {
                  _getIDdocument();
                } 
              },
            ),
            ListTile(
              leading: new Icon(Icons.source_sharp),
              title: new Text('Escanear tarjeta de propiedad'),
              onTap: () {
                Navigator.pop(context);
                if (type == "informacion") {
                  _getPropietyCard();
                } 
              },
            ),
          ],
        );
      },
    );
  }

  void _getIDdocument() async{
    _scan();
  }

  void _getPropietyCard() async{
    _scan();
  }

   Future _scan() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      String _BarCode = await scan();
      this._genericBarcode.text = _BarCode;
    }
    
  }

  _onShowFabChanged(bool _showFab) {
    
    if(_selectIndex == 0){
    setState(() {
      _showFab = true;
    });
    }

    if(_selectIndex == 1){
    setState(() {
      _showFab = false;
    });
    }
     
    return _showFab;
  }

  _showmargin(double _margin){

    if(_selectIndex == 0) {
      setState(() {
        _margin = 3.0;
      });
    }

    if(_selectIndex == 1) {
      setState(() {
        _margin = -100;
      });
    }

    return _margin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedOpacity(
        child: FloatingActionButton(
          onPressed: () => _showModal,
          child: Icon(Icons.camera),
          elevation: 0,
        ),
        opacity: _onShowFabChanged(_showFab) ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: Navbar(
        title: "SEIDA",
        searchBar: true,
      ),
      body: _widgetsOptions[_selectIndex],
      bottomNavigationBar:  BottomAppBarInspector(
        index: _selectIndex,
        onChangedTap: onChangedTap,
        margin: _showmargin(_margin),
      ),
    );
  }

}