import 'package:flutter/material.dart';
// ROW COUNT VIDEOSUNA KADAR OLAN KISIM KODLARI
void main() {
  runApp(new MaterialApp(
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
      body: Center(
        child: Container(
          //alignment: Alignment.center,
          color: Colors.greenAccent,
          child: Text(
            "Flutter is the best!",
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
            
          ),
          constraints: BoxConstraints.expand(width: 400,height: 400),
          margin: EdgeInsets.symmetric(horizontal: 20.0,vertical:20.0), //containter disi
          padding: EdgeInsets.all(30), //container ici  
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
  ));
}
