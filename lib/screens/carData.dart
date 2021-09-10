import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/widgets/slider-product.dart';
import 'package:flutter/material.dart';

class CarData extends StatefulWidget {
  @override
  CarDataState createState() => CarDataState();
}

final Map<String, Map<String, dynamic>> CarImages = {
  "Car": {
    "title": "View Car",
    "image": "https://images.unsplash.com/photo-1501084817091-a4f3d1d19e07?fit=crop&w=2700&q=80",
    "Images": [ 
      {
      "img": "https://cdn.motor1.com/images/mgl/rPJmr/s3/ford-raptor-renderings.jpg",
      },
      {
      "img": "https://i.blogs.es/a80bde/shelby-ford-svt-raptor-13/1366_2000.jpg",
      },
      {
      "img": "http://www.elcolombiano.com/blogs/blogaraje/wp-content/uploads/2011/09/Ford-F-150_SVT_Raptor_R_2010_1024x768_wallpaper_16.jpg",
      },
      {
      "img": "https://www.megautos.com/wp-content/uploads/2018/12/ford-f150-raptor-roja-1024x669.jpg",
      },
      {
      "img": "https://www.purosautos.com/wp-content/uploads/2020/08/ram-TR.jpg",
      },
      {
      "img": "https://i.blogs.es/ca1e83/2014-ford-f-150-svt-raptor-special-edition-1p/1366_2000.jpg",
      }
    ]
  }
};

final Map<String, Map<String, dynamic>> KeyImages = {
  "Key": {
    "tittle": "Key Images",
    "Images": [
      {
        "img": "https://www.keymart.com.mx/llaves-controles-para-auto/resized/KM-FD-006_0x250.jpg",
      },
      {
        "img": "https://www.keymart.com.mx/llaves-controles-para-auto/KM-FD-008.jpg",
      }
    ]
  }
};

class CarDataState extends State<CarData>{
  
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
                  alignment: Alignment.centerLeft,
                  child: Text("Datos del vehiculo",
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
                    child: Text("Placa:",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                    ),
                    Align(
                    alignment: Alignment.center,
                    child: Text("DAD 343",
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
                    child: Text("VIN:",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                    ),
                    Align(
                    alignment: Alignment.center,
                    child: Text("9FCBL4266C0000000",
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                    Align(
                    alignment: Alignment.center,
                    child: Text("Línea:",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                    ),
                    Align(
                    alignment: Alignment.center,
                    child: Text("FUSION",
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                    Align(
                    alignment: Alignment.center,
                    child: Text("Modelo:",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                    ),
                    Align(
                    alignment: Alignment.center,
                    child: Text("2020",
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
                    child: Text("Número de identificación del propietario:",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                    ),
                    Align(
                    alignment: Alignment.center,
                    child: Text("1006454538",
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
                    child: Text("Fotos del vehiculo",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                    ),
                    ProductCarousel(imgArray: CarImages["Car"]["Images"]),
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
                    child: Text("Fotos de la llave",
                    style: TextStyle(fontSize: 26, color: ArgonColors.text)),
                    ),
                    ProductCarousel(imgArray: KeyImages["Key"]["Images"]),
                 ],
              ),
          ],
          ),
      ),
    );
  }

}