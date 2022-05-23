import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit',
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
      ),
      home: const MyHomePage(title: 'Reddit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  //MaterialColor Color = Colors.red;
  //TextStyle textStyle = textStyle.merge(Alignment.center);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    return Scaffold(
      //appBar: AppBar(title: Text(widget.title,style:TextStyle(color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold)),),


      appBar: AppBar(

        leading: Icon(Icons.pending),
        backgroundColor: Colors.black38,
        title : Container(
          width: 300,
          height: 40,

          decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(10)),margin: EdgeInsets.only(left:200),

          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none
            ),
          )
                  ),
                ),


      body: Column(
        children: [
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.lightGreen,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.compass_calibration_sharp,
                color: Colors.lightGreen,
              ),
              label: 'Compass',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.lightGreen,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.maps_ugc_sharp,
                color: Colors.lightGreen,
              ),
              label: 'Maps',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_alert_sharp,
                color: Colors.lightGreen,
              ),
              label: 'Alert',
            )
          ],

        ),
    );
  }
}
