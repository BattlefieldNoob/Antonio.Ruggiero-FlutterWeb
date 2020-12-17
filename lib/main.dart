import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Antonio Ruggiero',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.blueAccent,
        buttonColor: Colors.blueAccent,
      ),
      home: MyHomePage(title: 'Antonio Ruggiero'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffd463a3), Color(0xffeb8f67)]));
    return Scaffold(
      body: Container(
          decoration: boxDecoration,
          child: Center(
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox.fromSize(size: Size.fromHeight(32)),
                Container(
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/profile.jpg")))),
                SizedBox.fromSize(size: Size.fromHeight(32)),
                Text(
                  "@antonio.ruggiero93",
                  style: TextStyle(color: Colors.black54, fontSize: 22),
                ),
                SizedBox.fromSize(size: Size.fromHeight(32)),
                FractionallySizedBox(
                    widthFactor: 0.5,
                    child: RaisedButton(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Sasha Dog Filter",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          debugPrint("cavallo");
                          window.location.assign("http://bit.ly/SashaInstaDog");
                        })),
                SizedBox.fromSize(size: Size.fromHeight(32)),
                FractionallySizedBox(
                    widthFactor: 0.5,
                    child: RaisedButton(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Thanks Mr Skeltal Filter",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          debugPrint("cavallo");
                          window.location
                              .assign("http://bit.ly/ThankMrSkeltal");
                        })),
              ],
            ),
          )),
    );
  }
}
