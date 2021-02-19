import 'package:flutter/material.dart';
import 'cardview.dart';
import 'listview.dart';

void main() {
  runApp(new MaterialApp(
      // Pertama Kali dirun hal 1
      home: new Halsatu(),
      title: "Navigasi",
      debugShowCheckedModeBanner: false,
      //Membuat Routing
      //Daftar nama route untuk setiap halaman
      routes: <String, WidgetBuilder>{
        '/Halsatu': (BuildContext context) => Halsatu(),
        '/Haldua': (BuildContext context) => LV(),
        '/Haltiga': (BuildContext context) => CV(),
      }));
}

//Class hal satu
class Halsatu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //judul Appbar
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      // icon button
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.android,
            size: 50.0,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}

//Class hal Dua
class Haldua extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //judul Appbar
      appBar: new AppBar(
        title: new Text("Music"),
      ),
      // icon button
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.music_note,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Haltiga');
          },
        ),
      ),
    );
  }
}

//Class hal Tiga
class Haltiga extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //judul Appbar
      appBar: new AppBar(
        title: new Text("Kalender"),
      ),
      // icon button
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.calendar_today,
            size: 50.0,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
