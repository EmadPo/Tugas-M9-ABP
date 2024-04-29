import 'package:flutter/material.dart';
import 'array_fpb.dart'; // Assuming your array_fpb.dart file contains the findGCD function

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple), // Merging the color scheme
        useMaterial3: true, // Merging useMaterial3 property
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<List<int>> array2D = [
      [for (int i = 1; i <= 4; i++) i * 6],
      [for (int i = 1, num = 3; i <= 5; i++, num += 2) num],
      [for (int i = 1, num = 4; i <= 6; i++, num++) num * num * num],
      [for (int i = 1, num = 3; i <= 7; i++, num += 7) num],
    ];

    String fpbResult = '';

    int num1 = 12;
    int num2 = 8;
    fpbResult = 'FPB $num1 dan $num2 = ${findGCD(num1, num2)}';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary, // Using color scheme
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Isi List:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            for (var row in array2D) Text(row.join(' ')),
            const SizedBox(height: 20),
            Text(
              "Bilangan 1: $num1\n"
              "Bilangan 2: $num2\n"
              "$fpbResult",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('Rohmad Hidayat 1301213010'), // Your name and ID
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .headline6, // Using headline6 style
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
