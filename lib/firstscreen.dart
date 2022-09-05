import 'package:flutter/material.dart';
import 'package:nav/secondscreen.dart';
import 'main.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});
  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  List myitem = ["screen 1", "Move to Screen 2", "Move to Home"];
  String selected = "screen 1";
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
              "Hello to First screen",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 50,
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
            DropdownButton(
              value: selected,
              items: myitem
                  .map((e) => DropdownMenuItem(value: e, child: Text("${e}")))
                  .toList(),
              onChanged: ((val) {
                setState(() {
                  selected = val.toString();
                  if (selected == "Move to Screen 2") {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Screentwo();
                      },
                    ));
                  } else if (selected == "Move to Home") {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  }
                });
              }),
            )
          ],
        )),
      ),
    );
  }
}
