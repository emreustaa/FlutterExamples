import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {

  // Liste icin veri kaynagi olustur
  List<int>listeNo = List.generate(300,(index)=>index);
  List <String>listeAltBaslik = List.generate(300, (index)=>"Liste Elemani alt baslik $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listeNo.map(
        (oankiEleman)=>Column(
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.red.shade900,
                margin: EdgeInsets.all(10.0),
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.location_on),
                    radius: 20,
                  ),
                  title: Text("Liste eleman baslik $oankiEleman"),
                  subtitle: Text(listeAltBaslik[oankiEleman]),
                  trailing: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.orange,
              height: 0,
              indent: 20,
            ),
          ],
        ),
      ).toList(),
    );
  }
}


/*
<Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.red.shade900,
                margin: EdgeInsets.all(10.0),
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.location_on),
                    radius: 20,
                  ),
                  title: Text("Liste eleman baslik"),
                  subtitle: Text("Liste elemani alt baslik"),
                  trailing: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.orange,
              height: 0,
              indent: 20,
            ),
          ],
        ),
      ],
*/