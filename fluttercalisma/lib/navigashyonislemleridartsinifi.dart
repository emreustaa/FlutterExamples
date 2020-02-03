import 'package:flutter/material.dart';

import 'package:fluttercalisma/navigasyon_islemleri.dart';

main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Dersleri",
    //initialRoute: "/CPage/DPage/FPage",
    routes: {
      '/': (context) => NavigasyonIslemleri(),
      // eger bunu kullaniyorsan home kullanmaman gerekiyor  ayni zamanda baslangic olarak hangi sayfanin olacagi belirlenir
      '/CPage': (context) => CSayfasi(),
      '/DPage': (context) => DSayfasi(),
      '/GPage': (context) => GSayfasi(),
      '/FPage': (context) => FSayfasi(),
      '/CPage/DPage': (context) => DSayfasi(),
      '/CPage/DPage/FPage': (context) => FSayfasi(),
      '/listeSayfasi': (context) => ListeSinifi(),
    },
    onGenerateRoute: (RouteSettings settings) {
      List<String> pathElemanlari =
          settings.name.split("/"); // /detay/$index   /urun/detay/id
      if (pathElemanlari[1] == 'detay') {
        return MaterialPageRoute(
          builder: (context) => ListeDetay(int.parse(pathElemanlari[2])),
        );
      }
      /*
      //  /urun/detay/id ve /urun/ozellik/id icin route olusturma
      if (pathElemanlari[1] == 'urun') {
        if (pathElemanlari[2] == 'detay') {

        }
      }*/
      return null;
    },
    onUnknownRoute: (RouteSettings settings) =>
        MaterialPageRoute(builder: (context) => DSayfasi()),
    //eger rotasi verilen sayfa bulunamazsa unknown kullanilir.

    theme: ThemeData(
        //brightness: Brightness.dark,
        primarySwatch: Colors.orange),
    //home: NavigasyonIslemleri(),
  ));
}
