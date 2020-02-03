import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.red.shade700,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("13. BOLUM SONU ODEV"),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {
            debugPrint("FAB TIKLANDI!");
          },
          child: Icon(
            Icons.access_alarms,
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade100,
                  child: Text(
                    "D",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade300,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade500,
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade700,
                  child: Text(
                    "T",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
                
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade200,
                  child: Text(
                    "E",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade300,
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade400,
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade500,
                  child: Text(
                    "L",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade600,
                  child: Text(
                    "E",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade700,
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(23, 20, 23, 20),
                  margin: EdgeInsets.all(2.0),
                  color: Colors.red.shade800,
                  child: Text(
                    "İ",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
          ],
        ),
      ),
    ),
  );
}
