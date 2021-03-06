import 'package:flutter/material.dart';
class ResimveButonTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Resim ve buton turleri!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/beyazitdevlet.jpg",
                      ),
                      Text("Asset Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                          "URL"),
                      Text(
                        "Network Image",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "http://www.fsm.edu.tr/mainSite/assets/images/corporateLogos/FSMVU.png"),
                        backgroundColor: Colors.white,
                        radius: 30,
                        //foregroundColor: Colors.white,
                      ),
                      Text("Circle Avatar"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                        placeholder: "assets/images/loadinggif.gif",
                        image:
                            "URL",
                      ),
                      Text("FadeinImage"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlutterLogo(
                        size: 60,
                        colors: Colors.red,
                        style: FlutterLogoStyle.stacked,
                        textColor: Colors.white,
                      ),
                      Text("Flutter Logo"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Placeholder(
                          color: Colors.red,
                          strokeWidth: 5.0,
                        ),
                      ),
                      Text("Place holder"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text("AHMET"),
                color: Colors.orange,
                textColor: Colors.white,
                onPressed: () => debugPrint("Fat arrowlu fonksiyon"),
              ),
              RaisedButton(
                child: Text("Flutter Dart"),
                color: Colors.green,
                elevation: 12,
                textColor: Colors.white,
                onPressed: () {
                  debugPrint("Normal lambda expression");
                  debugPrint("Ikinci satir");
                },
              ),
              RaisedButton(
                child: Text("Hizla devam ediyor"),
                color: Colors.red,
                elevation: 12,
                textColor: Colors.white,
                onPressed: () {
                  uzunMetod();
                },
              ),
              RaisedButton(
                child: Text("Calismaya devam!"),
                color: Colors.blue,
                elevation: 12,
                textColor: Colors.white,
                onPressed: uzunMetod,
              ),
              IconButton(
                icon: Icon(Icons.alarm_add),
                iconSize: 80.0,
                onPressed: () {
                  debugPrint("Icon button tiklandi!");
                },
              ),
              FlatButton(
                onPressed: () {
                  debugPrint("Flat button tiklandi!");
                },
                child: Text(
                  "Flat Button Deneme",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void uzunMetod() {
  debugPrint("Uzun metod cagrildi!");
}