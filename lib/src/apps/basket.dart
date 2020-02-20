import 'package:flutter/material.dart';

import '../App.dart';

class Basket extends StatefulWidget {
  Basket({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int _basketA = 0;
  int _basketB = 0;
  int _tiga = 3;
  int _hasil;

  void _threepoinA() {
    setState(() {
      _basketA = _basketA + 3;
    });
  }
  void _twopoinA() {
    setState(() {
      _basketA = _basketA + 2;
    });
  }
  void _onepoinA() {
    setState(() {
      _basketA++ ;
    });
  }
  void _threepoinB() {
    setState(() {
      _basketB=_basketB + 3;
    });
  }
  void _twopoinB() {
    setState(() {
      _basketB=_basketB+2;
    });
  }
  void _onepoinB() {
    setState(() {
      _basketB++;
    });
  }

  void _reset() {
    setState(() {
      _basketA = 0;
      _basketB = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Image.asset(
              "images/basketball.png",
              height: 30,
              width: 30,
            ),
          ),
        ],
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right:20.0),
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
                        Text("$_basketA",
                          style: TextStyle(fontSize: 110,),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80.0,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: _threepoinA,
                  padding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "3+",
                        style: TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/basketball.png",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 80.0,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: _twopoinA,
                  padding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "2+",
                        style: TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/basketball.png",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 80.0,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: _onepoinA,
                  padding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "1+",
                        style: TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/basketball.png",
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
              Text("TEAM B",style : TextStyle(fontSize: 18)),
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
                        Text("$_basketB",
                          style: TextStyle(fontSize: 110,),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80.0,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: _threepoinB,
                  padding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "3+",
                        style: TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/basketball.png",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 80.0,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: _twopoinB,
                  padding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "2+",
                        style: TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/basketball.png",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 80.0,
                height: 60.0,
                child: new RaisedButton(
                  onPressed: _onepoinB,
                  padding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: 0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "1+",
                        style: TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
//                      Padding(padding: EdgeInsets.only(top:10)),
                      Image.asset(
                        "images/basketball.png",
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
