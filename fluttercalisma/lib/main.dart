import 'package:flutter/material.dart';

void main() => runApp(FlutterDersleri());

class FlutterDersleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Dersleri",
      theme: ThemeData(
          primarySwatch: Colors.amber, accentColor: Colors.orangeAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ahmet Ak"),
              accountEmail: Text("ahmetak@gmail.com"),
              currentAccountPicture: Image.network(
                  "URL"),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text("AK"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text("EU"),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Iletisim"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Iletisim"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      debugPrint("Merhaba!");
                    },
                    splashColor: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text("Profil"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  AboutListTile(
                    applicationName: "Flutter Dersleri",
                    applicationIcon: Icon(Icons.save),
                    applicationVersion: "2.05",
                    child: Text("ABOUT US"),
                    icon: Icon(Icons.keyboard),
                    aboutBoxChildren: <Widget>[
                      Text("Child 1"),
                      Text("Child 2"),
                      Text("Child 3"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Flutter Dersleri Bolum2"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text("Kisisel Font Kullanimi"),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.red.shade800,
          primaryColor: Colors.white,
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Ana Sayfa"),
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("Ara"),
                activeIcon:
                    Icon(Icons.call), // aktif oldugunda gelecek olan ikon
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text("Ekle"),
                backgroundColor: Colors.tealAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                title: Text("Hesap"),
                backgroundColor: Colors.brown),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: secilenMenuItem,
          onTap: (index) {
            setState(() {
              secilenMenuItem = index;
            });
          },
        ),
      ),
    );
  }
}
