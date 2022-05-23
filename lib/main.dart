import 'dart:html';
import 'dart:ui';

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
    return MaterialApp(
      //appBar: AppBar(title: Text(widget.title,style:TextStyle(color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold)),),
      title:"Reddit",

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home:Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.pending,color: Colors.indigo,),
          leading: IconButton(
            icon: Icon(
              Icons.pending,
              color: Colors.indigo,
            ),
            padding: EdgeInsets.only(right:30),
            onPressed: () {
              // do something
            },
          ),
        backgroundColor: Color.fromRGBO(233, 188, 14, 0),

        title : Container(
         // alignment: Alignment.center,
          width: 300,
          height: 40,

            alignment: Alignment.center,
          decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(100)),margin: EdgeInsets.only(right:50,top: 6),


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
        actions:<Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.indigo,
            ),
            padding: EdgeInsets.only(right:30),
            onPressed: () {
              // do something
            },
          )
        ],
                ),


      body: Container(
        alignment: Alignment.center,
        child: Column(

        ),


      decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFffadad),
          Color(0xFFffd6a5),
          Color(0xFFfdffb6),
          Color(0xFFcaffbf),
          Color(0xFF9bf6ff),
          Color(0xFFa0c4ff),
          Color(0xFFbdb2ff),
          Color(0xFFffc6ff),
          Color(0xFFfffffc),
        ],
      )
      ),


      ),
        bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.lightGreen,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.compass_calibration_sharp,
                color: Colors.lightGreen,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.lightGreen,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.maps_ugc_sharp,
                color: Colors.lightGreen,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_alert_sharp,
                color: Colors.lightGreen,
              ),
              label: '',
            )
          ],
        )

        ),
    );
  }
}
