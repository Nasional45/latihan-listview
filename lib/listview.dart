import 'package:flutter/material.dart';

void main() => runApp(LV());

class LV extends StatelessWidget {
  List<Color> colors = [
    Colors.amberAccent,
    Colors.blue,
    Colors.red,
    Colors.brown,
    Colors.blueAccent,
    Colors.brown,
  ];
  List<Color> colors2 = [
    Colors.amberAccent,
    Colors.blue,
    Colors.red,
    Colors.brown,
    Colors.blueAccent,
    Colors.brown,
  ];

  List<Color> colors3 = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.pink,
  ];

  List<Color> colors4 = [
    Colors.white,
    Colors.purple,
    Colors.grey,
    Colors.purpleAccent,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.pink,
  ];

  List<String> namePerson = [
    "Rafli",
    "Boces",
    "Deni",
    "Andre",
    "Mono",
    "ferdi",
  ];
  List<String> namePerson1 = [
    "Asep",
    "Syarif",
    "Raden",
    "Eehan",
    "Fahmi",
    "Gilang",
    "Rafli",
    "Boces",
    "Deni",
    "Andre",
    "Mono",
    "ferdi",
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //judul Appbar
      appBar: new AppBar(
        title: new Text("ListView"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 200,
                          child: Card(
                            color: colors[index],
                            child: Center(child: Text(namePerson[index])),
                          ),
                        );
                      }),
                ),
                Container(
                  padding: EdgeInsets.only(top: 8.0),
                  height: 300,
                  child: ListView.builder(
                      itemCount: colors2.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: 150,
                          color: colors2[index],
                          child: Center(child: Text(namePerson[index])),
                        );
                      }),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors3.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        child: Card(
                          color: colors3[index],
                          child: Center(child: Text(namePerson1[index])),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors4.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        child: Card(
                          color: colors4[index],
                          child: Center(child: Text(namePerson1[index])),
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Haltiga');
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amberAccent,
                    ),
                    child: Center(
                      child: Text(
                        "Halaman Selanjutnya",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
