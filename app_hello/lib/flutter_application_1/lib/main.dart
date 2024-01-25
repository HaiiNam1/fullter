import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyObject {
  int value;

  MyObject({
    required this.value,
  });

  void performSpecificFunction() {
    print('Đã thực hiện chức năng cụ thể với giá trị $value');
  }

  void increase() {
    value++;
  }

  void decrease() {
    value--;
  }

  void setValue(int newValue) {
    value = newValue;
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyObject _myObject = MyObject(value: 0);
  String? title;

  Widget _buildText() {
    return Text(
      'Giá trị: ${_myObject.value}',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _myObject.increase();
                      setState(() {});
                    },
                    child: const Text('Tăng giá trị'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _myObject.decrease();
                      setState(() {});
                    },
                    child: const Text('Giảm giá trị'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _myObject.setValue(10);
                      setState(() {});
                    },
                    child: const Text('Đặt giá trị'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
