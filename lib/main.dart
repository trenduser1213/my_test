import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _status = "genap";
  int _counterGanjil = 1;
  int _counterGenap = 0;
  var _ganjil = "Hasil ganjil:";
  var _genap = "bilangan genap kelipatan 3 mulai dari 1 : ";
  int _n = 0;
  int _prime = 0;
  final TextEditingController _textController = TextEditingController();

  void _incrementCounter1() {
    setState(() {
      _counter++;
      // if (_counter > 10) {
      //   _counter = 1;
      // }
      if (_counter % 2 == 0) {
        _status = "genap";
        // if (_counter % 3 == 0) _genap += '${_counter}, ';
      } else {
        _status = "ganjil";
      }
      // for (int i = 0; i <= _counter; i++) {
      //   if (i % 2 != 0) {
      //     _ganjil += '${i}, ';
      //   }
      // }

      // for(int)
    });
  }

  void _incrementCounterGanjil() {
    setState(() {
      _counterGanjil++;
      for (int a = 0; a <= _counterGanjil; a++) {
        if (a % 2 != 0) {
          _ganjil += '${a}, ';
        }
      }
    });
  }

  void _incrementCounterGenap() {
    setState(() {
      _counterGenap++;
      if (_counterGenap % 2 == 0) {
        // _status = "genap";
        if (_counterGenap % 3 == 0) _genap += '${_counterGenap}, ';
      }
    });
  }

  void _findNthPrime() {
    setState(() {
      _n = int.tryParse(_textController.text) ?? 0;
      int primeCount = 0;
      int i = 2;

      while (primeCount < _n) {
        bool isPrime = true;

        for (int j = 2; j <= i / 2; j++) {
          if (i % j == 0) {
            isPrime = false;
            break;
          }
        }

        if (isPrime) {
          primeCount++;
        }

        i++;
      }

      _prime = i - 1;
      // _counterPrime++;
      // if (_counterPrime <= 2) {
      //   _prime += 'no, ';
      // }
      // if (_counterPrime = 2) {
      //   _prime += '${_counterPrime}, ';
      // } else {
      //   for (int i = 2; i <= _counterPrime / 2; i++) {
      //     if (_counterPrime % i == 0) {
      //       _prime += 'no, ';
      //       break;
      //     } else {
      //       _prime += '${_counterPrime}, ';
      //       break;
      //     }
      //   }
      // }
      // if (_counterPrime >= 2) {
      //   for (int i = 2; i <= _counterPrime / 2; i++) {
      //     if (_counterPrime % i != 0) {
      //       _prime += '${_counterPrime}, ';
      //     }
      //   }
      // }

      // int _counterPrime = 20;
      // print("Bilangan prima antara 1 dan $_counterPrime adalah:");
      // for (int i = 2; i <= _counterPrime; i++) {
      //   bool isPrime = true;
      //   for (int j = 2; j <= i / 2; j++) {
      //     if (i % j == 0) {
      //       isPrime = false;
      //       break;
      //     }
      //   }
      //   if (isPrime) {
      //     _prime += '${_counterPrime}, ';
      //   }
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '$_counter',
                    style: TextStyle(fontSize: 20),
                    // style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    _status,
                    style: TextStyle(fontSize: 20),
                    // style: Theme.of(context).textTheme.headline4,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: Text("tekan"),
                      onPressed: _incrementCounter1,
                    ),
                  ),
                  Text(
                    '$_counterGanjil',
                    style: TextStyle(fontSize: 20),
                    // style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    _ganjil,
                    style: TextStyle(fontSize: 20),
                    // style: Theme.of(context).textTheme.headline4,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: Text("tekan"),
                      onPressed: _incrementCounterGanjil,
                    ),
                  ),
                  Text(
                    '$_counterGenap',
                    style: TextStyle(fontSize: 20),
                    // style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    _genap,
                    style: TextStyle(fontSize: 20),
                    // style: Theme.of(context).textTheme.headline4,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: Text("tekan"),
                      onPressed: _incrementCounterGenap,
                    ),
                  ),
                  // Text(
                  //   '$_counterPrime',
                  //   style: TextStyle(fontSize: 20),
                  //   // style: Theme.of(context).textTheme.headline4,
                  // ),
                  // Text(
                  //   _prime,
                  //   style: TextStyle(fontSize: 20),
                  //   // style: Theme.of(context).textTheme.headline4,
                  // ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: ElevatedButton(
                  //     child: Text("tekan"),
                  //     onPressed: _incrementCounterPrime,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _textController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter N',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _findNthPrime,
                    child: Text('Find Nth Prime'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Prime number ke-$_n adalah $_prime',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        ],
      ), // // ),
    );
  }
}
