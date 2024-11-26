import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyAppTest());
  var test = TestClass(x: 3, y: 4);
  print(test.y);

  var testNew = test.copWith(x:20); // without adding y we can get the before defined y value
  print(testNew.x);
  print(testNew.y);
}

//added this testClass for test the copywith function and sample constructor work demonstration

class TestClass{
  int x;
  int y;

  TestClass({required this.x, required this.y});

  TestClass copWith({int? x,int? y}){ //nullable prams need to add { } too - optional
    return TestClass(x:x??this.x, y: y??this.y);
    return TestClass(x:x!, y: y!);
  }
}

//sample test learning MyAppTest widget
class MyAppTest extends StatelessWidget {
  const MyAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavBar()
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // how it looks.

  // always marked "final".

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

  void _decrementCounter() {
    setState(() {
      if (_counter != 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:',
                  style: TextStyle(
                      fontSize: 17.0, color: Color.fromARGB(255, 150, 10, 64))),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add)),
            FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.remove)),
          ],
        ));
  }
}
