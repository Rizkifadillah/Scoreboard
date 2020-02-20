import 'package:flutter/material.dart';

class Tenis extends StatefulWidget {
  Tenis({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _TenisState createState() => _TenisState();
}

class _TenisState extends State<Tenis> {
  int _tenis = 0;
  int _tenistwo = 0;

  void _skorTenis() {
    setState(() {
      _tenis++;
    });
  }
  void _skorTenistwo() {
    setState(() {
      _tenistwo++;
    });
  }

  void _reset() {
    setState(() {
      _tenis = 0;
      _tenistwo=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Image.asset(
              "images/tennis.png",
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
              Text("TEAM A",style: TextStyle(fontSize: 18)),
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
                          "$_tenis",
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
                  onPressed: _skorTenis,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "GOAL",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/tennis.png",
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
              Text("TEAM B",style: TextStyle(fontSize: 18)),
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
                          "$_tenistwo",
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
                  onPressed: _skorTenistwo,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "GOAL",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/tennis.png",
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