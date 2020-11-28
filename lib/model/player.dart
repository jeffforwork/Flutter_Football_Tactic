import 'package:flutter/material.dart';
import 'package:flutter_football_tactics/main.dart';

class Player extends StatefulWidget {
  final Offset position;
  final String dataName;
  final Color color;

  const Player({Key key, this.position, this.dataName, this.color}) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  Offset position = Offset(0.0, 0.0);
  double top = 0;
  double left = 0;

  @override
  void initState(){
    super.initState();
    position = widget.position;
  }

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top : position.dy-128.2,
      left: position.dx-10,
      child: Draggable(
        data: widget.color,
        child: Container(
          width: 30.0,
          height: 30.0,
          color: widget.color,
          child: Center(
            child: Text(
              widget.dataName,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 13.0,
              ),
            ),
          ),
        ),
        feedback: Container(
          width: 30.0,
          height: 30.0,
          color: widget.color.withOpacity(0.5),
          child: Center(
            child: Text(
              widget.dataName,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 13.0,
              ),
            ),
          ),
        ),
        onDraggableCanceled: (velocity, offset){
          setState(() {
            print(offset);
            position = offset;
            if(offset.dx < 10.0 && offset.dy < 128.0) {position = Offset(10.0, 128.0);}
            if(offset.dx > 352.0 && offset.dy < 128.0)  {position = Offset(352.0, 128);}
            if(offset.dx > 352.0 && offset.dy > 742.0) {position = Offset(352.0, 742.0);}
            if(offset.dx < 10.0 && offset.dy > 742.0) {position = Offset(10.0, 742.0);}
            if(offset.dy < 128.0) {position = Offset(position.dx, 128.0);}
            if(offset.dy > 742.0) {position = Offset(position.dx, 742.0);}
            if(offset.dx < 10.0)  {position = Offset(10.0, position.dy);}
            if(offset.dx > 352.0) {position = Offset(352.0, position.dy);}
          });
        },
      ),
    );
  }
}
