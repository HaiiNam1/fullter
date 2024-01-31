import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int value = 0;

  void addValue() {
    setState(() {
      value += 1;
    });
  }

  void subtractValue() {
    setState(() {
      value -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'body: $value',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  // Xử lý logic giảm giá trị
                  setState(() {
                    value -= 1;
                  });
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  // Xử lý logic tăng giá trị
                  setState(() {
                    value += 1;
                  });
                },
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        title: const Text('MY APP'),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      body: CounterWidget(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}
