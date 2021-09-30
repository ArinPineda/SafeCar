import 'dart:io';
import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qrscan/qrscan.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:intl/intl.dart';

class LostKey extends StatefulWidget {
  @override
  LostKeyState createState() => LostKeyState();
}

class LostKeyState extends State<LostKey> {
  TextEditingController _disableDate;
  String _disableReasonSelected = 'Perdida de la llave';
  List _disableReason = [
    'Perdida de la llave',
    'Robo de la llave',
  ];
  TextEditingController _lostDate;
  TextEditingController _RFIDKey;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _disableDate = TextEditingController(text: "");
    _lostDate = TextEditingController(text: "");
    _RFIDKey = TextEditingController(text: "");
  }

  void CallDisableDatePicker() async {
    var _selectedDate = await getDatePickerWidget();
    String _dateFormatted = DateFormat('dd/MM/yyyy').format(_selectedDate);
    setState(() {
      _disableDate.text = _dateFormatted;
    });
  }

  void CallLostDatePicker() async {
    var _selectedDate = await getDatePickerWidget();
    String _dateFormatted = DateFormat('dd/MM/yyyy').format(_selectedDate);
    setState(() {
      _lostDate.text = _dateFormatted;
    });
  }

  Future<DateTime> getDatePickerWidget() {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2099),
      builder: (context, child) {
        return Theme(data: ThemeData.dark(), child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        new Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: ListView(
              padding: EdgeInsets.all(20),
              children: <Widget>[
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.center,
                  child: Text("Resportar llave perdida",
                      style: TextStyle(fontSize: 30, color: ArgonColors.text)),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Input(
                    placeholder: "RFID llave",
                    controller: _RFIDKey,
                    prefixIcon: Icon(Icons.car_rental),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Input(
                    placeholder: "Fecha de perdida",
                    prefixIcon: Icon(Icons.calendar_today_outlined),
                    controller: _lostDate,
                    onTap: CallLostDatePicker,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Input(
                    placeholder: "Fecha de deshabilitación",
                    prefixIcon: Icon(Icons.calendar_today_outlined),
                    controller: _disableDate,
                    onTap: CallDisableDatePicker,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: DropdownButtonFormField<String>(
                    hint: Text('Razon de deshabilitación'),
                    decoration: InputDecoration(
                      errorMaxLines: 2,
                      labelStyle: TextStyle(color: ArgonColors.black),
                      contentPadding: const EdgeInsets.only(top: 16.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).focusColor.withOpacity(0.2),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).focusColor.withOpacity(0.5),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ArgonColors.primary,
                        ),
                      ),
                    ),
                    value: _disableReasonSelected,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: ArgonColors.black),
                    onChanged: (String newValue) {
                      setState(() {
                        _disableReasonSelected = newValue;
                      });
                    },
                    items:
                        _disableReason.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 15),
                FlatButton(
                  onPressed: () {},
                  child: Text("Aceptar"),
                  color: ArgonColors.primary,
                ),
              ],
            ))
      ],
    );
  }
}
