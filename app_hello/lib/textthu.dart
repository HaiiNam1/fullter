import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _value = 0;
  String? title;
  Widget _buildText() {
    return Text(
      'Giá trị: $_value',
      style: const TextStyle(fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.person),
          title: Text(title ?? 'Debugging App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildText(),
              OutlinedButton(
                onPressed: () {
                  _value++;
                  setState(() {});
                },
                child: const Text('Tính toán'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

