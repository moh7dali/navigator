import 'package:flutter/material.dart';
import 'main.dart';

class Screentwo extends StatefulWidget {
  const Screentwo({super.key});

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
    );
  }
}
