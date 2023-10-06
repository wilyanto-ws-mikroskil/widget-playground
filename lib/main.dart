import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Playground'),
        ),
        body: const WidgetPlayground(),
      ),
    );
  }
}

class WidgetPlayground extends StatelessWidget {
  const WidgetPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Container Example
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: const Center(
              child: Text(
                'Container',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // Row and Column Example
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ],
          ),

          Column(
            children: [
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ],
          ),

          // Expanded and Flexible Example
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 50,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 50,
                ),
              ),
            ],
          ),

          // Center Example
          Center(
            child: Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
              child: const Text('Center'),
            ),
          ),

          // Align Example
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.orange,
              width: 100,
              height: 100,
              child: const Text('Align'),
            ),
          ),
        ],
      ),
    );
  }
}
