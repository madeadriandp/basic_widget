import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
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
       });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[330],
        body: Column(
          children: <Widget>[
            Container(color: Colors.redAccent,
              child: const Image(
               image: NetworkImage('https://miro.medium.com/max/2400/1*K0Hq-0HWIb2fKPe3u5rtaQ.png'), 
              )
            ),
           
            Container(
              width: 400, 
              height: 150, 
              color: Colors.cyan, 
              margin: const EdgeInsets.only(left: 7, top: 7, right:7, bottom: 7) ,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 3,
                  blurRadius: 10,
                )]
              ),
              
              child:
                Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Container( 
                      child: Text(
                      'Login',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,),
                      ),
                   ),
                   
                    Text(
                      "Username",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )          
                ],),
                   
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
