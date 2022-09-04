import 'package:flutter/material.dart';
import 'main.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
              child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                "Hello to second screen",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 63,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  });
                },
                icon: Icon(Icons.arrow_back_ios_new),
                label: Text(
                  "Move to main screen",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
