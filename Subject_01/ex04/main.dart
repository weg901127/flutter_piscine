import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyHomePage(title: "ex03")));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _dough = <String>["오리지널 도우", "씬 도우"];
  final List<Widget> _dough_image = <Widget>[
    Image.network("https://bit.ly/3nTOYgE"),
    Image.network("https://bit.ly/3ECSDpT"),
  ];

  final List<String> _sauce = <String>["토마토 소스", "특제 소스"];
  final List<Widget> _sauce_image = <Widget>[
    Image.network("https://bit.ly/3mBUgOr"),
    Image.network("https://bit.ly/3mDPdxc"),
  ];

  final List<String> _cheese = <String>["모짜렐라 치즈", "고르곤졸라 치즈"];
  final List<Widget> _cheese_image = <Widget>[
    Image.network("https://bit.ly/3bwboii"),
    Image.network("https://bit.ly/3w6PYBZ"),
  ];

  final List<String> _mainItem = <String>["페퍼로니", "null", "감자", "베이컨"];
  final List<Widget> _main_image = <Widget>[
    Image.network("https://bit.ly/3nOEvTK"),
    Image.network("https://bit.ly/3GFnG6x"),
    Image.network("https://bit.ly/3nTYdxD"),
    Image.network("https://bit.ly/3GCV1Pr"),
  ];
  final List<String> _pizzaStack = <String>[];
  List<List> _menuItems;
  List<String> _orderMenu;
  String _orderedPizza = " ";
  int _orderedPizzaIndex;

  @override
  void initState() {
    super.initState();
    _menuItems = <List>[
      [_dough[0], _sauce[0], _cheese[0], _mainItem[0]],
      [_dough[1], _sauce[0], _cheese[0], _mainItem[1]],
      [_dough[0], _sauce[1], _cheese[1], _mainItem[2]],
      [_dough[1], _sauce[1], _cheese[0], _mainItem[3]],
    ];
    _orderMenu = <String>[
      "페퍼로니 피자",
      "치즈 피자",
      "포테이토 피자",
      "베이컨 피자",
    ];
    _getNewPizzaOrder();
  }

  void _getNewPizzaOrder() {
    _orderedPizzaIndex = Random().nextInt(4);
    _orderedPizza = _orderMenu[_orderedPizzaIndex];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _bodyContext(),
      ),
    );
  }

  Widget _bodyContext() {
    return Center(
      child: Column(
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "주문 피자 : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      _orderedPizza,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      child: DragTarget(
                        builder: (BuildContext context, List<Object> test1,
                            List<dynamic> test2) {
                          return Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://bit.ly/2ZG7CjM",
                              ),
                              Text(
                                "Drop Here",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          );
                        },
                        onWillAccept: (data) {
                          return true;
                        },
                        onAccept: (data) {
                          if (_pizzaStack.length < 3) {
                            /**
                             *
                             * */
                          }
                          if (_pizzaStack.length < 4) _pizzaStack.add(data);
                          setState(() {
                            if (_pizzaStack.length >= 4) {
                              /**
                               *
                               * */

                              /**
                               *
                               * */
                              _pizzaStack.clear();
                              _getNewPizzaOrder();
                            }
                          });
                        },
                      ),
                    )),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
          Divider(
            thickness: 4,
            color: Colors.black54,
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Builder(
                builder: (BuildContext context) {
                  int _size = _pizzaStack.length;

                  if (_size == 0)
                    return _pizzaItemWidget(
                        _dough[0], _dough[1], _dough_image[0], _dough_image[1]);
                  else if (_size == 1)
                    return _pizzaItemWidget(
                        _sauce[0], _sauce[1], _sauce_image[0], _sauce_image[1]);
                  else if (_size == 2)
                    return _pizzaItemWidget(_cheese[0], _cheese[1],
                        _cheese_image[0], _cheese_image[1]);
                  else
                    return _pizzaMainItemWidget(
                        _mainItem[0], _mainItem[1], _mainItem[2], _mainItem[3]);
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _pizzaItemWidget(String left, String right, src1, src2) {
    Widget menu1 = getImgWidget(src1);
    Widget menu2 = getImgWidget(src2);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Draggable(
          childWhenDragging: menu1,
          child: menu1,
          feedback: menu1,
          data: left,
        ),
        SizedBox(
          width: 20,
        ),
        Draggable(
          childWhenDragging: menu2,
          child: menu2,
          feedback: menu2,
          data: right,
        ),
      ],
    );
  }

  Widget _pizzaMainItemWidget(
      String menu1, String menu2, String menu3, String menu4) {
    Widget menu1_img = getImgWidget(_main_image[0]);
    Widget menu2_img = getImgWidget(_main_image[1]);
    Widget menu3_img = getImgWidget(_main_image[2]);
    Widget menu4_img = getImgWidget(_main_image[3]);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Draggable(
              childWhenDragging: menu1_img,
              child: menu1_img,
              feedback: menu1_img,
              data: _mainItem[0],
            ),
            SizedBox(
              width: 15,
            ),
            Draggable(
              childWhenDragging: menu2_img,
              child: menu2_img,
              feedback: menu2_img,
              data: _mainItem[1],
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Draggable(
              childWhenDragging: menu3_img,
              child: menu3_img,
              feedback: menu3_img,
              data: _mainItem[2],
            ),
            SizedBox(
              width: 15,
            ),
            Draggable(
              childWhenDragging: menu4_img,
              child: menu4_img,
              feedback: menu4_img,
              data: _mainItem[3],
            ),
          ],
        ),
      ],
    );
  }

  Container getImgWidget(Widget image) {
    return Container(
      width: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(
            5,
            5,
          ),
        )
      ]),
      alignment: Alignment.center,
      child: image,
    );
  }
}
