import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day00_Ex02',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  int count = 0;

  MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() => AppBar(
        centerTitle: false,
        title: Text("Stateless? or Stateful?"),
        backgroundColor: Colors.green,
      );

  Widget _buildBody() => MyBody(count: count);
}

class MyBody extends StatefulWidget {
  const MyBody({Key key, this.count}) : super(key: key);
  final int count;

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int _count = 41;
  ButtonStyle btnStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(
      Colors.green,
    ),
    elevation: MaterialStateProperty.all(10),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.count == 0 ? _count.toString() : 0.toString(),
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() => _count++);
              if (_count == 42)
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('answer to life the universe and everything'),
                  ),
                );
            },
            child: Text("Add"),
            style: btnStyle,
          ),
        ],
      ),
    );
  }
}
