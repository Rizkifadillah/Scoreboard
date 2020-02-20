import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_skor/src/apps/badminton.dart';
import 'package:flutter_app_skor/src/apps/basket.dart';
import 'package:flutter_app_skor/src/apps/sepakbola.dart';
import 'package:flutter_app_skor/src/apps/tenis.dart';
import 'package:flutter_app_skor/src/apps/tenis_meja.dart';
import 'package:flutter_app_skor/src/apps/voli.dart';

class AppMain extends StatefulWidget {
  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        fit: StackFit.loose,
        children: <Widget>[
          ClipPath(
            clipper: ClippingClass(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*4/7,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff40dedf), Color(0xff0fb2ea)],
                ),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 60,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 35,
                              backgroundImage: AssetImage("images/scoreboard.png"),
                            ),
                          ),
                          Text(
                            "Scoreboard",
                            style: TextStyle(color: Colors.grey, fontSize: 24),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Color(0xff0fb2ea),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 80,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: TextField(
                              // controller: TextEditingController(text: locations[0]),
                              cursorColor: Theme.of(context).primaryColor,
                              style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),
                              decoration: InputDecoration(
                                  hintText: "Scroll Up and Down",
                                  hintStyle: TextStyle(
                                      color: Colors.black38, fontSize: 16),
                                  prefixIcon: Material(
                                    elevation: 0.0,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                    child: Icon(Icons.keyboard_arrow_up),
                                  ),
                                  suffixIcon: Material(
                                    elevation: 0.0,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                    child: Icon(Icons.keyboard_arrow_down),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                height: 200.0,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 100),
                pauseAutoPlayOnTouch: Duration(seconds: 5),
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                items: [
                  "images/bolacs.jpg",
                  "images/basketcs.jpg",
                  "images/badmintoncs.jpg",
                  "images/teniscs.jpg",
                  "images/tenismejacs.jpg",
                  "images/volics.jpg"
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding: EdgeInsets.all( 20),
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image:AssetImage(i),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(.8),
                                  shape: BoxShape.circle
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(-15, 0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(.8),
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap:(){
//                    Navigator.push(context, MaterialPageRoute(builder: (context) => Detailes()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          height: 168,
                          width: 150,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder:(context)=>Sepakbola()
                              ));
                            },
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              elevation: 10,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.only(top: 20),
                                        height: 80,
                                        width: 80,
                                        child: Image.asset("images/football.png")),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Sepakbola",
                                            style: TextStyle(fontSize: 24),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 168,
                          width: 150,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder:(context)=>Basket()
                              ));
                            },
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              elevation: 10,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.only(top: 20),
                                        height: 80,
                                        width: 80,
                                        child: Image.asset("images/basketball.png")),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Basket Ball",
                                            style: TextStyle(fontSize: 24),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 168,
                        width: 150,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder:(context)=>Badminton()
                            ));
                          },
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 80,
                                      width: 80,
                                      child: Image.asset("images/badminton.png")),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Badminton",
                                          style: TextStyle(fontSize: 24),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 168,
                        width: 150,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder:(context)=>Tenis()
                            ));
                          },
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 80,
                                      width: 80,
                                      child: Image.asset("images/tennis.png")),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Tenis",
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 168,
                        width: 150,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder:(context)=>TenisMeja()
                            ));
                          },
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 80,
                                      width: 80,
                                      child: Image.asset("images/ping-pong.png")),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Tenis Meja",
                                          style: TextStyle(fontSize: 24),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 168,
                        width: 150,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder:(context)=>Voli()
                            ));
                          },
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 80,
                                      width: 80,
                                      child: Image.asset("images/volleyball.png")),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Volley Ball",
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40,)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _customCard({String imageUrl, String item, String duration}){
    return SizedBox(
      height: 168,
      width: 150,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 80,
                  width: 80,
                  child: Image.asset("assets/logos/" + imageUrl)),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item,
                      style: TextStyle(fontSize: 24),
                    ),
//                    Text(duration)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path>{
  @override

  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var controlPoint = Offset(size.width - (size.width / 2), size.height - 120);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

const List<Color> aquaGradients = [
  Color(0xFF5AEAF1),
  Color(0xFF8EF7DA),
];





//
//import '../main.dart';
//import 'apps/badminton.dart';
//import 'apps/basket.dart';
//import 'apps/sepakbola.dart';
//import 'apps/tenis.dart';
//import 'apps/tenis_meja.dart';
//import 'apps/voli.dart';
//
//class AppMain extends StatefulWidget {
//  AppMain({Key key, this.title}) : super(key: key);
//  final String title;
//  @override
//  _AppMainState createState() => _AppMainState();
//}
//
//class _AppMainState extends State<AppMain> {
//  int _counter2 = 0;
//
//  void _goalSkor() {
//    setState(() {
//      _counter2++;
//    });
//  }
//
//  void _threePion() {
//    setState(() {
//      _counter2 +3;
//    });
//  }
//
//  void _twoPoin() {
//    setState(() {
//      _counter2 +2;
//    });
//  }
//
//  void _reset() {
//    setState(() {
//      _counter2 = 0;
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: ListView(
//        children: <Widget>[
//          Column(
//            children: <Widget>[
//              Container(
//                height: 200,
//                width: 400,
//                color: Colors.greenAccent,
//                child: Padding(
//                  padding: const EdgeInsets.all(28.0),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                    children: <Widget>[
//                      Image.asset(
//                        "images/scoreboard.png",
//                        height: 100,
//                        width: 100,
//                      ),
//                      Text("PAPAN SKOR",style: TextStyle(fontSize: 20,color: Colors.black45),),
//                    ],
//                  ),
//                ),
//              ),
//            ],
//          ),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Row(
//                    children: <Widget>[
//                      SizedBox(
//                        width: 160.0,
//                        height: 160.0,
//                        child: new RaisedButton(
//                          onPressed: () {
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context) => Sepakbola()),
//                            );
//                          },
//                          padding: EdgeInsets.symmetric(
//                              vertical: 10, horizontal: 10),
//                          shape: RoundedRectangleBorder(
//                              borderRadius:
//                              BorderRadius.all(Radius.circular(10))),
//                          color: Colors.green,
//                          child: Column(
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: <Widget>[
//                              Text(
//                                "SEPAKBOLA",
//                                style: TextStyle(
//                                    color: Colors.white, fontSize: 18.0),
//                              ),
//                              Padding(padding: EdgeInsets.only(top:10)),
//                              Image.asset(
//                                "images/football.png",
//                                height: 100,
//                                width: 100,
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.only(left: 8.0),
//                        child: SizedBox(
//                          width: 160.0,
//                          height: 160.0,
//                          child: new RaisedButton(
//                            onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => Basket()),
//                              );
//                            },
//                            padding: EdgeInsets.symmetric(
//                                vertical: 10, horizontal: 10),
//                            shape: RoundedRectangleBorder(
//                                borderRadius:
//                                BorderRadius.all(Radius.circular(10))),
//                            color: Colors.grey,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                                Text(
//                                  "BASKET",
//                                  style: TextStyle(
//                                      color: Colors.white, fontSize: 18.0),
//                                ),
//                                Padding(padding: EdgeInsets.only(top:10)),
//                                Image.asset(
//                                  "images/basketball.png",
//                                  height: 100,
//                                  width: 100,
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Row(
//                    children: <Widget>[
//                      SizedBox(
//                        width: 160.0,
//                        height: 160.0,
//                        child: new RaisedButton(
//                          onPressed: () {
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context) => Badminton()),
//                            );
//                          },
//                          padding: EdgeInsets.symmetric(
//                              vertical: 10, horizontal: 10),
//                          shape: RoundedRectangleBorder(
//                              borderRadius:
//                              BorderRadius.all(Radius.circular(10))),
//                          color: Colors.amber,
//                          child: Column(
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: <Widget>[
//                              Text(
//                                "BADMINTON",
//                                style: TextStyle(
//                                    color: Colors.white, fontSize: 18.0),
//                              ),
//                              Padding(padding: EdgeInsets.only(top:10)),
//                              Image.asset(
//                                "images/badminton.png",
//                                height: 100,
//                                width: 100,
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.only(left: 8.0),
//                        child: SizedBox(
//                          width: 160.0,
//                          height: 160.0,
//                          child: new RaisedButton(
//                            onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => TenisMeja()),
//                              );
//                            },
//                            padding: EdgeInsets.symmetric(
//                                vertical: 10, horizontal: 10),
//                            shape: RoundedRectangleBorder(
//                                borderRadius:
//                                BorderRadius.all(Radius.circular(10))),
//                            color: Colors.purpleAccent,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                                Text(
//                                  "TENIS MEJA",
//                                  style: TextStyle(
//                                      color: Colors.white, fontSize: 18.0),
//                                ),
//                                Padding(padding: EdgeInsets.only(top:10)),
//                                Image.asset(
//                                  "images/ping-pong.png",
//                                  height: 100,
//                                  width: 100,
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Row(
//                    children: <Widget>[
//                      SizedBox(
//                        width: 160.0,
//                        height: 160.0,
//                        child: new RaisedButton(
//                          onPressed: () {
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context) => Voli()),
//                            );
//                          },
//                          padding: EdgeInsets.symmetric(
//                              vertical: 10, horizontal: 10),
//                          shape: RoundedRectangleBorder(
//                              borderRadius:
//                              BorderRadius.all(Radius.circular(10))),
//                          color: Colors.blue,
//                          child: Column(
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: <Widget>[
//                              Text(
//                                "BOLA VOLLEY",
//                                style: TextStyle(
//                                    color: Colors.white, fontSize: 18.0),
//                              ),
//                              Padding(padding: EdgeInsets.only(top:10)),
//                              Image.asset(
//                                "images/volleyball.png",
//                                height: 100,
//                                width: 100,
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.only(left: 8.0),
//                        child: SizedBox(
//                          width: 160.0,
//                          height: 160.0,
//                          child: new RaisedButton(
//                            onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => Tenis()),
//                              );
//                            },
//                            padding: EdgeInsets.symmetric(
//                                vertical: 10, horizontal: 10),
//                            shape: RoundedRectangleBorder(
//                                borderRadius:
//                                BorderRadius.all(Radius.circular(10))),
//                            color: Colors.red,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                                Text(
//                                  "TENIS",
//                                  style: TextStyle(
//                                      color: Colors.white, fontSize: 18.0),
//                                ),
//                                Padding(padding: EdgeInsets.only(top:10)),
//                                Image.asset(
//                                  "images/tennis.png",
//                                  height: 100,
//                                  width: 100,
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ],
//      ),
////        ],
////      ),
//    );
//  }
//}
//
