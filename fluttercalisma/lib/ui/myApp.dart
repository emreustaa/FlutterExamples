import 'package:flutter/material.dart';
import 'package:fluttercalisma/ui/resim_ve_buton_turleri.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.red.shade700,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Butonlar"),
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
        body: ResimveButonTurleri(),
      ),
    );
  }
}