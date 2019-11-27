import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[330],
        body: Column(
          children: <Widget>[
            Container(
              child: const Image(
               image: NetworkImage('http://blog.wuokko.org/wp-content/uploads/2011/04/grosssglockner_from_the_luckner_haus.jpg'), 
              )
            ),
            Spacer(),
            Container(
              child:
              Row(
                children: <Widget>[
                Spacer(),
                Column(children: <Widget>[
                   
                    Text(
                      'The Luckner Haus',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,),
                    ),
                    
                    Text(
                      "Grossglockner, Austria",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black38, fontSize: 20),
                    )          
                ],),
                Spacer(),
                  Icon(
                    Icons.stars,
                    color:Colors.indigo,
                    size: 24.0
                  ),
                  Text(
                    "100",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),
                  ),
                  Spacer(),
                ]
              ),
            ),
            Spacer(),
            Container(
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Spacer(),
                    Icon(Icons.phone, size: 28, color: Colors.blue),
                    Spacer(),
                    Icon(Icons.near_me, size: 28, color: Colors.blue),
                    Spacer(),
                    Icon(Icons.share, size: 28, color: Colors.blue),
                    Spacer(),
                  ],),
                  Row(children: <Widget>[
                    Spacer(flex:7),
                    Text(
                      "CALL",
                      style:TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)
                    ),
                    Spacer(flex:6),
                    Text(
                      "ROUTE",
                      style:TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)
                    ),
                    Spacer(flex:6),
                    Text(
                      "SHARE",
                      style:TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)
                    ),
                    Spacer(flex:6),
                  ],)
            ],),),
            Spacer(),
            Container(child: Column(children: <Widget>[
              Text(
                """Austrias highest peak, standing just short of 
4000m, Großglockner stands on the border of Tyrol 
and is part of the Hohe Tauern mountain range 
within the Hohe Tauern National Park. 
It’s 3798m summit was first ascended in 1800 by 
Austrian team is now one of the most popular 
mountains to be climbed in Austria. The popularity 
is not any lessened by the fact that its “normal route” 
more difficult than many of the other massifs in the 
Alps, but with a very good access."""
              )
            ],),),
            Spacer(),
        ],)
      );
  }
}
