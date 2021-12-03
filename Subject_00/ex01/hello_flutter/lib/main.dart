import 'package:flutter/material.dart';

void main() => runApp(CounterPage());

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Counter();
}

class Counter extends State<CounterPage> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    ButtonStyle btnStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Colors.green,
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all<Size>(
        Size(
          60,
          60,
        ),
      ),
      elevation: MaterialStateProperty.all(10),
    );
    final _increaseCount = () => setState(() => value++);
    final _decreaseCount = () => setState(() => value--);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Hello Flutter"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text("You have pushed the button this many times:")),
              Center(
                  child: Text(
                "$value",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _increaseCount(),
                    child: Text("+"),
                    style: btnStyle,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  ElevatedButton(
                    onPressed: () => _decreaseCount(),
                    child: Text("-"),
                    style: btnStyle,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
