import 'package:argon_flutter/screens/carData.dart';
import 'package:argon_flutter/screens/dataMenu.dart';
import 'package:argon_flutter/screens/inspectorMenu.dart';
import 'package:argon_flutter/screens/logins.dart';
import 'package:argon_flutter/screens/messengerData.dart';
import 'package:argon_flutter/screens/searchCar.dart';
import 'package:flutter/material.dart';

// screens
import 'package:argon_flutter/screens/onboarding.dart';
import 'package:argon_flutter/screens/home.dart';
import 'package:argon_flutter/screens/profile.dart';
import 'package:argon_flutter/screens/loginInspector.dart';
import 'package:argon_flutter/screens/articles.dart';
import 'package:argon_flutter/screens/elements.dart';

import 'package:argon_flutter/screens/loginCliente.dart';

import 'package:argon_flutter/screens/information.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SEIDA',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/logins",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/home": (BuildContext context) => new Home(),
          "/profile": (BuildContext context) => new Profile(),
          "/articles": (BuildContext context) => new Articles(),
          "/elements": (BuildContext context) => new Elements(),
          "/loginInspector": (BuildContext context) => new LoginInspector(),
          "/loginCliente": (BuildContext context) => new LoginCliente(),
          "/logins": (BuildContext context) => new LoginsPage(),
          "/searchCar": (BuildContext context) => new SearchCar(),
          "/inspectorMenu": (BuildContext context) => new InspectorMenu(),
          "/dataMenu": (BuildContext context) => new DataMenu(),
          "/carData": (BuildContext context) => new CarData(),
          "/information": (BuildContext context) => new Information(),
          "/messengerData": (BuildContext context) => new MessengerData()
        });
  }
}
