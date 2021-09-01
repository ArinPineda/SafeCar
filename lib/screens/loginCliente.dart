import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/input.dart';

import 'package:argon_flutter/widgets/drawer.dart';

class LoginCliente extends StatefulWidget {
  @override
  _LoginClienteState createState() => _LoginClienteState();
}

class _LoginClienteState extends State<LoginCliente> {
  final double height = window.physicalSize.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: ArgonDrawer(currentPage: "LoginCliente"),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/register-bg.png"),
                    fit: BoxFit.cover)),
          ),
          SafeArea(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 42.0, left: 24.0, right: 24.0, bottom: 12.0),
                child: Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                                color: ArgonColors.white,
                                border: Border(
                                    bottom: BorderSide(
                                        width: 0.5, color: ArgonColors.muted))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text("SEIDA",
                                      style: TextStyle(
                                          color: ArgonColors.text,
                                          fontSize: 36.0)),
                                )),
                                // Divider()
                              ],
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.45,
                            color: Color.fromRGBO(244, 245, 247, 1),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 18.0, bottom: 18.0),
                                      child: Center(
                                        child: Text("Cliente",
                                            style: TextStyle(
                                                color: ArgonColors.text,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 26)),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Input(
                                            placeholder: "Telefono",
                                            prefixIcon: Icon(Icons.phone),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16),
                                          child: Center(
                                            child: FlatButton(
                                              textColor: ArgonColors.white,
                                              color: ArgonColors.primary,
                                              onPressed: () {},
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16.0,
                                                      right: 16.0,
                                                      top: 12,
                                                      bottom: 12),
                                                  child: Text("OBTENER CODIGO",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16.0))),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Input(
                                              placeholder: "Ingresar Codigo",
                                              prefixIcon:
                                                  Icon(Icons.message_sharp)),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16),
                                      child: Center(
                                        child: FlatButton(
                                          textColor: ArgonColors.white,
                                          color: ArgonColors.primary,
                                          onPressed: () {
                                            // Respond to button press

                                            // Navigator.push(
                                            //context,
                                            //new MaterialPageRoute(
                                            //  builder: (context) =>
                                            //    new ClienteMenu()));

                                            Navigator.pushNamed(
                                                context, '/information');
                                          },
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.0,
                                                  right: 16.0,
                                                  top: 12,
                                                  bottom: 12),
                                              child: Text("ACCEDER",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16.0))),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    )),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
