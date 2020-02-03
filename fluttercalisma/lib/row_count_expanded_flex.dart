import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red, accentColor: Colors.blue),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Ilk uygulama",
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB");
          },
          //backgroundColor: Colors.green,
          child: Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 24.0,
          ),
        ),
        body: Container(
          color: Colors.lightGreen,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.purpleAccent,
                  child: Icon(
                    Icons.add_location,
                    size: 64,
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.orange,
                  child: Icon(
                    Icons.add_location,
                    size: 64,
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.grey,
                  child: Icon(
                    Icons.add_location,
                    size: 64,
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.blue,
                  child: Icon(
                    Icons.add_location,
                    size: 64,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),
        /*
        height: 300,
        width: 300,
        child: Text(
          "Merhaba flutter",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        color: Colors.green.shade200,
         alignment: Alignment.center,
         */
      ),

      /*
      Center(
        child: Text(
          "Flutter Merhaba",
        ),
      ),*/
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
  );
}
