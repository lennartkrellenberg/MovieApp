import 'package:flutter/material.dart';

Map<int, Color> black = {
  50: Color.fromRGBO(16, 16, 16, .1),
  100: Color.fromRGBO(16, 16, 16, .2),
  200: Color.fromRGBO(16, 16, 16, .3),
  300: Color.fromRGBO(16, 16, 16, .4),
  400: Color.fromRGBO(16, 16, 16, .5),
  500: Color.fromRGBO(16, 16, 16, .6),
  600: Color.fromRGBO(16, 16, 16, .7),
  700: Color.fromRGBO(16, 16, 16, .8),
  800: Color.fromRGBO(16, 16, 16, .9),
  900: Color.fromRGBO(16, 16, 16, 1),
};

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MaterialColor blackPrimary = MaterialColor(0xFF121212, black);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: blackPrimary,
          primaryTextTheme: TextTheme(
              headline6: TextStyle(
            color: Colors.white,
          ))),
      home: MyHomePage(title: 'MovieApp'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 35, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Comming Soon',
                style: new TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 175,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Trending Movies',
                style: new TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 15),
              Container(
                height: 175,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Trending Series',
                style: new TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 175,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: new BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: new BorderRadius.all(
                              const Radius.circular(20.0))),
                      height: 175,
                      width: 300,
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              )
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        )));
  }
}
