import 'package:flutter/material.dart';
import 'package:flutter_football_tactics/model/away_team.dart';
import 'package:flutter_football_tactics/model/home_team.dart';
import 'package:flutter_football_tactics/model/player.dart';

void main() => runApp(
      new MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draggable',
      home: Drag(),
    );
  }
}

class Drag extends StatefulWidget {
  Drag({Key key}) : super(key: key);

  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Football'),
        backgroundColor: Color(0xff0E1E5B),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(10),
        height: 645.0,
        width: 380.0,
        color: Color(0xff6594C0),
        child: Stack(
          children: [
            HomeTeam(),
            AwayTeam(),
          ],
        ),
      ),
    );
  }
}
