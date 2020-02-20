import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/App.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(

        title: 'Papan Skor',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(
//        width: MediaQuery.of(context).size.width,
//        height: MediaQuery.of(context).size.height,
            child: AppMain())
    );
  }
}
