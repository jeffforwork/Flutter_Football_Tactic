import 'package:flutter/material.dart';
import 'package:flutter_football_tactics/model/player.dart';
import 'package:flutter_football_tactics/main.dart';

class AwayTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var awayteamColor = Color(0xff96261E);
    return Stack(
      children: [
        Player(
          position: Offset(175.5, 140.5),
          dataName: 'P1',
          color: awayteamColor,
        ),
        Player(
          position: Offset(38.0, 208.0),
          dataName: 'P2',
          color: awayteamColor,
        ),
        Player(
          position: Offset(320.0, 208.0),
          dataName: 'P3',
          color: awayteamColor,
        ),
        Player(
          position: Offset(228.0, 208.0),
          dataName: 'P4',
          color: awayteamColor,
        ),
        Player(
          position: Offset(130.0, 208.0),
          dataName: 'P5',
          color: awayteamColor,
        ),
        Player(
          position: Offset(175.5, 265.0),
          dataName: 'P6',
          color: awayteamColor,
        ),
        Player(
          position: Offset(38.0, 340.0),
          dataName: 'P7',
          color: awayteamColor,
        ),
        Player(
          position: Offset(320.0, 340.0),
          dataName: 'P8',
          color: awayteamColor,
        ),
        Player(
          position: Offset(130.0, 310.0),
          dataName: 'P9',
          color: awayteamColor,
        ),
        Player(
          position: Offset(175.5, 380.0),
          dataName: 'P10',
          color: awayteamColor,
        ),
        Player(
          position: Offset(228.0, 310.0),
          dataName: 'P11',
          color: awayteamColor,
        ),
      ],
    );
  }
}
