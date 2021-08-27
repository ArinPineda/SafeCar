import 'package:argon_flutter/widgets/drawer.dart';
import 'package:argon_flutter/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

class SearchCar extends StatefulWidget {
  @override
  SearchCarPageState createState() => SearchCarPageState();
}

class SearchCarPageState extends State<SearchCar> {
  
  TextEditingController _numberPlate;
  final _formKey = GlobalKey<FormState>();
  
  void _goViewCar(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, "/dataMenu", (route) => false);
  }

  Future<void> _viewCar() async {
    _goViewCar(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ArgonColors.bgColorScreen,
      drawer: ArgonDrawer(currentPage: "SearchCar"),
      body: Container(
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: <Widget>[
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text("Buscar vehiculo",
                    style: TextStyle(fontSize: 30, color: ArgonColors.text)),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Placa",
                  prefixIcon: Icon(Icons.pin_rounded),
                ),
              ),
              SizedBox(height: 15),
              FlatButton(
                    onPressed:  () async {
                          await _viewCar();
                      },
                    child: Text("Aceptar"),
                    color: ArgonColors.primary,
                  ),
          ],),
        ),
      ),
    );
  }

}
