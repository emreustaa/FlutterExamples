import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B Sayfasi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon Islemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              
              child: Text("A sayfasina git"),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ASayfasi()),
                );
              },
            ),
            RaisedButton(
              child: Text("B sayfasina git ve veri gonder"),
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BSayfasi(baslik)),
                );
              },
            ),
            RaisedButton(
              child: Text("c sayfasina git ve geri gel "),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CSayfasi(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("D sayfasina git ve gelirken veri getir "),
              color: Colors.pink,
              onPressed: () {
                Navigator.push<bool>(
                  context,
                  MaterialPageRoute(builder: (context) => DSayfasi()),
                ).then((popOlayindanSonraGelenDeger) {
                  debugPrint(
                      "Pop isleminden gelen deger $popOlayindanSonraGelenDeger");
                });
              },
            ),
            RaisedButton(
              child: Text("E sayfasina git ve geri gelme "),
              color: Colors.pink,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ESayfasi()));
              },
            ),
            RaisedButton(
              child: Text("Liste Sayfasina git"),
              color: Colors.pink,
              onPressed: () {
                Navigator.pushNamed(context, "/listeSayfasi");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListeSinifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,"/detay/$index"
                  );
            },
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text("Liste elemani $index"),
              ),
            ),
          );
        },
        itemCount: 60,
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {
  int tiklanilanIndex = 0;
  ListeDetay(this.tiklanilanIndex);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Detay Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text("Liste elemani $tiklanilanIndex"),
        ),
      ),
    );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "A SAYFASI",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslikVerisi;
  BSayfasi(this.gelenBaslikVerisi) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gelenBaslikVerisi,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              gelenBaslikVerisi,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C SAYFASI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "C SAYFASI",
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("GERİ DÖN"),
              color: Colors.purple,
            ),
            RaisedButton(
              child: Text("A sayfasina git"),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ASayfasi(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint("on will pop calisti");
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "D SAYFASI",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "D SAYFASI",
                style: TextStyle(color: Colors.red),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop<bool>(context, true);
                  //true demek urun silindi
                  //false demek urun silinemedi veya kullanici vazgecti
                },
                child: Text("GERİ DÖN VE VERI GONDER"),
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "E SAYFASI",
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              child: Text("F Sayfasina git"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FSayfasi()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "F SAYFASI",
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              child: Text("G Sayfasina git"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/GPaged");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "G Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "G SAYFASI",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
