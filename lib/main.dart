import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Portfolio'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 1500,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  color: Colors.lightBlueAccent,
                  width: 800,
                  height: 400,
                ),
              ),
              Positioned(
                right: 200,
                top: 80,
                child: Image.network('assets/man.jpg'),
                width: 850,
              ),
              Positioned(
                left: 200,
                top: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'HELLO',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "I'm Alet",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    Text(
                      'Richard',
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'A Fullstack Developer',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    OutlineButton(
                      onPressed: () {},
                      child: Text(
                        'HIRE ME',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontFamily: 'Montserrat'),
                      ),
                      borderSide: BorderSide(
                        color: Colors.blue, //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 0.8, //width of the border
                      ),
                    ),
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
