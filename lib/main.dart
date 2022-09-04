import 'package:flutter/material.dart';
import 'package:nav/screen.dart';

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
        child: Container(
          child: ElevatedButton.icon(
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
              "Move to second screen",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
