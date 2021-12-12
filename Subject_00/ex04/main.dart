import 'package:flutter/material.dart';

import 'custom_widget/pockemon_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day00_Ex05',
      home: Scaffold(appBar: _buildAppBar(), body: _buildBody()),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      centerTitle: false,
      title: Text("My Poket"),
      backgroundColor: Color(0xFFFCBE1E),
      elevation: 0,
    );
  }

  Widget _buildBody() {
    TextStyle headerText = TextStyle(
      color: Colors.white,
      fontSize: 25,
    );
    TextStyle MainText = TextStyle(
      color: Colors.white,
      fontSize: 40,
    );
    TextStyle descriptionText = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
    String mainImageUrl =
        'https://mblogthumb-phinf.pstatic.net/MjAxNzAyMjVfMjMg/MDAxNDg3OTUzMTI3Mzc0._tG2RA_tY9IZcrw10kWz3YfLkhcuSRxm_rUQoLRhsQEg.hndrmcX4b8HI5c_EJB_JfftjG6C79zJXLQ0g6dZy9FQg.GIF.doghter4our/IMG_3900.GIF?type=w800';
    return PoketmonDetails(
      mainImageUrl: mainImageUrl,
      headerText: headerText,
      MainText: MainText,
      descriptionText: descriptionText,
    );
  }
}
