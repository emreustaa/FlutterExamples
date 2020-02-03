import 'dart:io';

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

//sepereated reklam koyulurken kullanilabilir
class EtkinListOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];
  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();
    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 4 == 0 && index != 0) {
          return Container(
            height: 2,
            color: Colors.blue,
            margin: EdgeInsets.all(4),
          );
        } else {
          return Container();
        }
      },
      itemCount: 20,
      //itemBuilder: (context, index) => Card(),
      itemBuilder: (context, index) {
        return Card(
          color: index % 2 == 0 ? Colors.red.shade200 : Colors.orange.shade200,
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.perm_contact_calendar),
            title: Text(tumOgrenciler[index]._isim),
            subtitle: Text(tumOgrenciler[index]._aciklama),
            trailing: Icon(Icons.add),
            onTap: () {
              debugPrint(tumOgrenciler[index].toString());
              toastMesajGoster(index, context, false);
              alertDialogCoster(context, index);
            },
            onLongPress: () {
              debugPrint("Uzun basilan eleman $index");
              toastMesajGoster(index, context, true);
              alertDialogCoster(context, index);
            },
          ),
        );
      },
    );
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index Adi : \n",
            "Ogrenci $index aciklama ", index % 2 == 0 ? true : false));
  }

  void toastMesajGoster(int index, BuildContext context, bool uzunBasilma) {
    Toast.show(
        uzunBasilma
            ? "uzun basildi ?" + tumOgrenciler[index].toString()
            : "tek tiklama :" + tumOgrenciler[index].toString(),
        context,
        duration: Toast.LENGTH_LONG,
        gravity: Toast.BOTTOM);
  }

  void alertDialogCoster(BuildContext ctx, int index) {
    showDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (ctx) {
        return AlertDialog(
          title: Text("Merhaba"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Ogrenci adi : ${tumOgrenciler[index]._isim}"),
                Text("Ogrenci aciklamasi : ${tumOgrenciler[index]._aciklama}"),
              ],
            ),
          ),
          actions: <Widget>[
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text("Evet"),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                ),
                FlatButton(
                  child: Text("Hayir"),
                  // color: Colors.red,
                  onPressed: () {
                    debugPrint("Hayira basildi!");
                    Navigator.of(ctx).pop();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "Secilen ogrenci adi : $_isim aciklamasi : $_aciklama";
  }
}
