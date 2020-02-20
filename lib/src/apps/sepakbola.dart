import 'package:flutter/material.dart';

class Sepakbola extends StatefulWidget {
  Sepakbola({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SepakbolaState createState() => _SepakbolaState();
}

class _SepakbolaState extends State<Sepakbola> {
  int _goal = 0;
  int _goaltwo = 0;

  void _skorGoal() {
    setState(() {
      _goal++;
    });
  }
  void _skorGoaltwo() {
    setState(() {
      _goaltwo++;
    });
  }

  void _reset() {
    setState(() {
      _goal = 0;
      _goaltwo=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Image.asset(
              "images/football.png",
              height: 30,
              width: 30,
            ),
          ),
        ],
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 22.0),
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
              Text("TEAM A",style: TextStyle(fontSize: 18),),
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
                          "$_goal",
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
                  onPressed: _skorGoal,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "GOAL",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/football.png",
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
              Text("TEAM B",style: TextStyle(fontSize: 18),),
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
                          "$_goaltwo",
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
                  onPressed: _skorGoaltwo,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "GOAL",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/football.png",
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
