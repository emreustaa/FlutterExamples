import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "Material App Title",
      home: MyHomePage(title: "My Home Page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;
  MyHomePage({this.title}){
      debugPrint("My Home Page Stateful Wigdet constructor Calisti");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("My Home Page Create State tetiklendi");
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  MyHomePageState(){
    debugPrint("My Home Page Build constructor tetiklendi!");
  }
  @override
  Widget build(BuildContext context) {
    debugPrint("My Home Page Build metodu tetiklendi!");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            debugPrint("Set state tetiklendi!");
            sayacDegeriniArttir();
          });
        },
        child: Icon(Icons.account_circle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Butona basilma sayisi"),
            Text(
              "${widget.sayac}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void sayacDegeriniArttir() {
    widget.sayac++;
    debugPrint("Sayac degeri : ${widget.sayac}");
  }
}
