import 'package:argon_flutter/constants/Theme.dart';
import 'package:flutter/material.dart';

class MessengerData extends StatefulWidget {
  @override
  MessengerDataState createState() => MessengerDataState();
}

class MessengerDataState extends State<MessengerData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ArgonColors.bgColorScreen,
      body: Container(
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Align(
                alignment: Alignment.center,
                child: Text("Asegurado por",
                    style: TextStyle(fontSize: 34, color: ArgonColors.text)),
              ),
            ),
            SizedBox(height: 15),
            Divider(
              height: 40.0,
              thickness: 1.5,
              indent: 32.0,
              endIndent: 32.0,
            ),
            SizedBox(height: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text("Nombre:",
                      style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Arin Solir Pineda Vazques",
                      style: TextStyle(fontSize: 18, color: ArgonColors.text)),
                ),
              ],
            ),
            SizedBox(height: 5),
            Divider(
              height: 40.0,
              thickness: 1.5,
              indent: 32.0,
              endIndent: 32.0,
            ),
            SizedBox(height: 5),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text("Identificación:",
                      style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("1006454539",
                      style: TextStyle(fontSize: 18, color: ArgonColors.text)),
                ),
              ],
            ),
            SizedBox(height: 5),
            Divider(
              height: 40.0,
              thickness: 1.5,
              indent: 32.0,
              endIndent: 32.0,
            ),
            SizedBox(height: 5),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text("Tipo de identificación:",
                      style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Cedula de ciudadania",
                      style: TextStyle(fontSize: 18, color: ArgonColors.text)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
