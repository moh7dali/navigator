import 'package:flutter/material.dart';
import 'package:nav/firstscreen.dart';
import 'package:nav/secondscreen.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Screenone();
                  },
                ));
              });
            },
            icon: Icon(Icons.forward),
            label: Text(
              "Move to first screen",
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Screentwo();
                  },
                ));
              });
            },
            icon: Icon(Icons.forward),
            label: Text(
              "Move to Second screen",
              style: TextStyle(fontSize: 26),
            ),
          ),
        ]),
      ),
    );
  }
}
