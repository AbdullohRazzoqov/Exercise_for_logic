import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("mantiqda mashq qilish"),
      ),
      body: Center(
          child: Container(
            margin: _counter > 0
            ? EdgeInsets.only(bottom: 10.0 * _counter)
            : EdgeInsets.only(
                top: 10.0 * (_counter * -1),
              ),
            child: Text(
          "Counter: $_counter",
          style: const TextStyle(fontSize: 30),
        ),
      )),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              increaseCounter();
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: devreaseCounter,
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }

  void increaseCounter() => setState(() => _counter += 1);

  void devreaseCounter() {
    setState(() {
      _counter -= 1;
    });
  }
}
