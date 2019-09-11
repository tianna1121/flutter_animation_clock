import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "My Clock",
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState();
  _currentTime() {
    return " ${DateTime.now().hour} : ${DateTime.now().minute}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Clock",
          ),
        ),
        backgroundColor: Colors.deepOrange,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.deepOrange,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.circular(50.0),
                elevation: 10.0,
                color: Colors.brown.shade900,
                child: Container(
                  width: 320,
                  height: 320,
                  child: Center(
                    child: Text(
                      _currentTime(),
                      style: TextStyle(
                          fontSize: 70.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  "assets/images/pandulum.png",
                  width: 100,
                  height: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
