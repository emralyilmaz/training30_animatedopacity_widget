import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool gorunurluk = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedOpacity Widget"),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: gorunurluk ? 1.0 : 0.0,
          duration: Duration(milliseconds: 2000),
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Merhaba",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            gorunurluk = !gorunurluk;
          });
        },
      ),
    );
  }
}
