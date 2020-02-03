import 'package:flutter/material.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
            //display2: TextStyle(fontSize: 80),
            ),
        primarySwatch: Colors.blue,
      ),
      title: "Material App Title",
      home: _MyHomePage(title: "My Home Page"),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;
  _MyHomePage({this.title}) {
    debugPrint("My Home Page Stateful Wigdet constructor Calisti");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("My Home Page Create State tetiklendi");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<_MyHomePage> {
  _MyHomePageState() {
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
            _sayacDegeriniArttir();
          });
        },
        child: Icon(Icons.account_circle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Azalt"),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                _sayacDegeriniAzalt();
              },
            ),
            //Text("Butona basilma sayisi"),
            Text(
              "${widget.sayac}",
              //style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              style: Theme.of(context).textTheme.display2.copyWith(
                color:  widget.sayac<=0 ? Colors.red : Colors.green
              ),
            ),
            RaisedButton(
              child: Text("Arttir"),
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                _sayacDegeriniArttir();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _sayacDegeriniArttir() {
    setState(() {
      widget.sayac++;
      debugPrint("Sayac degeri : ${widget.sayac}");
    });
  }

  void _sayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("Sayac degeri : ${widget.sayac}");
    });
  }
}
