import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Stack & Align"),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.blueAccent,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.amberAccent,
                      ))
                ]),
              ),
              Flexible(
                flex: 1,
                child: Row(children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.amberAccent,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.blueAccent,
                      ))
                ]),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Ini adalah contoh text stack mencoba dari tutorial youtube.",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment(1, -1),
            child: ElevatedButton(
              child: Text("tekan"),
              onPressed: () {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Image(
              image: NetworkImage(
                  "https://i.pinimg.com/736x/63/a2/bc/63a2bc8378c8e94a685289c37bfaaa95.jpg"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(100),
            child: Image(
              image: NetworkImage(
                  "https://i.pinimg.com/736x/63/a2/bc/63a2bc8378c8e94a685289c37bfaaa95.jpg"),
            ),
          )
        ],
      ),
    ));
  }
}
