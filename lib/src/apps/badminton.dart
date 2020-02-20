import 'package:flutter/material.dart';
import '../App.dart';

class Badminton extends StatefulWidget {
  Badminton({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _BadmintonState createState() => _BadmintonState();
}

class _BadmintonState extends State<Badminton> {
  int _bad = 0;
  int _badtwo = 0;

  void _skorBad() {
    setState(() {
      _bad++;
    });
  }
  void _skorBadtwo() {
    setState(() {
      _badtwo++;
    });
  }

  void _reset() {
    setState(() {
      _bad = 0;
      _badtwo=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Image.asset(
              "images/badminton.png",
              height: 30,
              width: 30,
            ),
          ),
        ],
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              child: Image.asset(
                "images/scoreboard.png",
                height: 100,
                width: 100,
              ),
              onTap: _reset,
            ),
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "$_bad",
                          style: TextStyle(
                            fontSize: 110,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80.0,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: _skorBad,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "GOAL",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/badminton.png",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "$_badtwo",
                          style: TextStyle(
                            fontSize: 110,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80.0,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: _skorBadtwo,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "GOAL",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/badminton.png",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
