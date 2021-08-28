import 'dart:io';
import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qrscan/qrscan.dart';
import 'package:permission_handler/permission_handler.dart';

class GetCarData extends StatefulWidget {
  @override
  GetCarDataState createState() => GetCarDataState();
}


class GetCarDataState extends State<GetCarData>{
  
  final _formKey = GlobalKey<FormState>();

  TextEditingController _genericBarcode;

  File _imageCarPick1 = null;
  File _imageCarPick2 = null;
  File _imageCarPick3 = null;
  File _imageCarPick4 = null;
  File _imageCarPick5 = null;
  File _imageCarPick6 = null;

  File _imageKeyPick1 = null;
  File _imageKeyPick2 = null;

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
 
  void _getImageCar1() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      var _imageCar = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
        _imageCarPick1 = _imageCar;
    });
    }
    
  }

  void _getImageCar2() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      var _imageCar = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
        _imageCarPick2 = _imageCar;
    });
    }
  }

  void _getImageCar3() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      var _imageCar = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
        _imageCarPick3 = _imageCar;
    });
    }
  }

  void _getImageCar4() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      var _imageCar = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
        _imageCarPick4 = _imageCar;
    });
    }
  }

  void _getImageCar5() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      var _imageCar = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
        _imageCarPick5 = _imageCar;
    });
    }
  }

  void _getImageCar6() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      var _imageCar = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
        _imageCarPick6 = _imageCar;
    });
    }
  }

  void _getImageKey1() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      var _imageCar = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
        _imageKeyPick1 = _imageCar;
    });
    }
  }

  void _getImageKey2() async {
    var _cameraPermission = await Permission.camera.status;
    if(!_cameraPermission.isGranted){
      await Permission.camera.request();
    }

    if(_cameraPermission.isGranted){
      var _imageCar = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
        _imageKeyPick2 = _imageCar;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ArgonColors.bgColorScreen,
      body: Container(
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        child: Form(
           key: _formKey,
           autovalidateMode: AutovalidateMode.disabled,
           child: ListView(
             padding: EdgeInsets.all(20),
             children: <Widget>[
              SizedBox(height: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("Escanear QR",
                    style: TextStyle(fontSize: 30, color: ArgonColors.text)),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Cedula de ciudadania",
                    style: TextStyle(fontSize: 24, color: ArgonColors.text)),
                  ),
                  FlatButton(
                    onPressed: _scan,
                    child: Icon(Icons.aspect_ratio_rounded),
                    color: ArgonColors.primary,
                  ),
                ],
              ),
              SizedBox(height: 1),
              Divider(
                  height: 40.0,
                  thickness: 1.5,
                  indent: 32.0,
                  endIndent: 32.0,
              ),
              SizedBox(height: 1),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Nombre",
                  prefixIcon: Icon(Icons.account_circle_sharp),
                ),
              ), 
              SizedBox(height: 15),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Número de identificación",
                  prefixIcon: Icon(Icons.badge_rounded),
                ),
              ), 
              SizedBox(height: 15),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Fecha de nacimiento",
                  prefixIcon: Icon(Icons.calendar_today_rounded),
                ),
              ), 
              SizedBox(height: 1),
              Divider(
                  height: 40.0,
                  thickness: 1.5,
                  indent: 32.0,
                  endIndent: 32.0,
              ),
              SizedBox(height: 1), 
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("Escanear QR",
                    style: TextStyle(fontSize: 30, color: ArgonColors.text)),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Tarjeta de propiedad",
                    style: TextStyle(fontSize: 24, color: ArgonColors.text)),
                  ),
                  FlatButton(
                    onPressed: _scan,
                    child: Icon(Icons.aspect_ratio_rounded),
                    color: ArgonColors.primary,
                  ),
                ],
              ),
              SizedBox(height: 1),
              Divider(
                  height: 40.0,
                  thickness: 1.5,
                  indent: 32.0,
                  endIndent: 32.0,
              ),
              SizedBox(height: 1),    
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Placa",
                  prefixIcon: Icon(Icons.pin_rounded),
                ),
              ), 
              SizedBox(height: 15),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "VIN",
                  prefixIcon: Icon(Icons.directions_car_filled_rounded),
                ),
              ), 
              SizedBox(height: 15),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Marca",
                  prefixIcon: Icon(Icons.poll_rounded),
                ),
              ), 
              SizedBox(height: 15),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Color",
                  prefixIcon: Icon(Icons.format_paint_rounded),
                ),
              ), 
              SizedBox(height: 15),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Modelo",
                  prefixIcon: Icon(Icons.calendar_today_rounded),
                ),
              ),  
              SizedBox(height: 15),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Propietario",
                  prefixIcon: Icon(Icons.portrait_rounded),
                ),
              ), 
              SizedBox(height: 15),       
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "Identificación",
                  prefixIcon: Icon(Icons.badge_rounded),
                ),
              ), 
              SizedBox(height: 15),
              Align(
                    alignment: Alignment.center,
                    child: Text("Tomar fotos del vehiculo",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                  ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          onTap: () => _getImageCar1(),
                          child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: (_imageCarPick1 == null)
                                ? Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo_rounded,
                                          color: ArgonColors.info,
                                          size: 26,
                                        ),
                                        
                                      ],
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Image.file(
                                      _imageCarPick1,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          onTap: () => _getImageCar2(),
                          child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: (_imageCarPick2 == null)
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo_rounded,
                                          color: ArgonColors.info,
                                        ),
                                      ],
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Image.file(
                                      _imageCarPick2,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          onTap: () => _getImageCar3(),
                          child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: (_imageCarPick3 == null)
                                ? Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo_rounded,
                                          color: ArgonColors.info,
                                          size: 26,
                                        ),
                                        
                                      ],
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Image.file(
                                      _imageCarPick3,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          onTap: () => _getImageCar4(),
                          child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: (_imageCarPick4 == null)
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo_rounded,
                                          color: ArgonColors.info,
                                        ),
                                      ],
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Image.file(
                                      _imageCarPick4,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          onTap: () => _getImageCar5(),
                          child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: (_imageCarPick5 == null)
                                ? Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo_rounded,
                                          color: ArgonColors.info,
                                          size: 26,
                                        ),
                                        
                                      ],
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Image.file(
                                      _imageCarPick5,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          onTap: () => _getImageCar6(),
                          child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: (_imageCarPick6 == null)
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo_rounded,
                                          color: ArgonColors.info,
                                        ),
                                      ],
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Image.file(
                                      _imageCarPick6,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Align(
                    alignment: Alignment.center,
                    child: Text("Tomar fotos de la llave",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                  ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          onTap: () => _getImageKey1(),
                          child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: (_imageKeyPick1 == null)
                                ? Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo_rounded,
                                          color: ArgonColors.info,
                                          size: 26,
                                        ),
                                        
                                      ],
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Image.file(
                                      _imageKeyPick1,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          onTap: () => _getImageKey2(),
                          child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: (_imageKeyPick2 == null)
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo_rounded,
                                          color: ArgonColors.info,
                                        ),
                                      ],
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Image.file(
                                      _imageKeyPick2,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              FlatButton(
                    onPressed: (){},
                    child: Text("Registrar"),
                    color: ArgonColors.primary,
                  ),
             ],
           ),  
        ),
      ),
    );
  }

} 