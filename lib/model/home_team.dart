import 'package:flutter/material.dart';
import 'package:flutter_football_tactics/model/player.dart';
import 'package:flutter_football_tactics/main.dart';

class HomeTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hometeamColor = Color(0xff091442);
    return Stack(
      children: [
        Player(
          position: Offset(175.5, 725.5),
          dataName: 'P1',
          color: hometeamColor,
        ),
        Player(
          position: Offset(38.0, 650.0),
          dataName: 'P2',
          color: hometeamColor,
        ),
        Player(
          position: Offset(320.0, 650.0),
          dataName: 'P3',
          color: hometeamColor,
        ),
        Player(
          position: Offset(228.0, 650.0),
          dataName: 'P4',
          color: hometeamColor,
        ),
        Player(
          position: Offset(130.0, 650.0),
          dataName: 'P5',
          color: hometeamColor,
        ),
        Player(
          position: Offset(175.5, 582.0),
          dataName: 'P6',
          color: hometeamColor,
        ),
        Player(
          position: Offset(228.0, 523.0),
          dataName: 'P7',
          color: hometeamColor,
        ),
        Player(
          position: Offset(130.0, 523.0),
          dataName: 'P8',
          color: hometeamColor,
        ),
        Player(
          position: Offset(38.0, 470.0),
          dataName: 'P9',
          color: hometeamColor,
        ),
        Player(
          position: Offset(175.5, 440.0),
          dataName: 'P10',
          color: hometeamColor,
        ),
        Player(
          position: Offset(320.0, 470.0),
          dataName: 'P11',
          color: hometeamColor,
        ),
      ],
    );
  }
}
