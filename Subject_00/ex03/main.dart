import 'package:flutter/material.dart';

import 'custom_widget/blur_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextStyle tt = TextStyle(
      color: Colors.white,
    );
    String mainImageUrl =
        'https://maxmovie.cdnsave.com/images/1628644797279L0zPH.jpg';
    String titleImageUrl =
        'https://w.namu.la/s/420422c9668360c3654fb8d4ba4b4921a22a8732d660e08d81cfa5281035aae6573a4f61927aaeecdcf6ee911af6ea5a4aa49bef54be3f63ada78ac5f914e1cfb4b78e644e2190944fb886f2688ffb91';
    return MaterialApp(
      title: 'Day00_Ex03',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    BlurImage(mainImageUrl: mainImageUrl),
                    Positioned(
                      top: 50,
                      right: 0,
                      left: 0,
                      child: Image.network(titleImageUrl),
                    ),
                    Positioned(
                      right: 5,
                      left: 5,
                      bottom: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title: Squeid Game 2021",
                            style: tt,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Episodes: 1",
                            style: tt,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Genre: TV Drama",
                            style: tt,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Plot: Seong Gi-hun, a divorced and indebted chauffeur, is invited to play a series of childrent's games for a chance at a large cash prize. Accepting the offer, he is taken to an unknown locaiton where he finds himself among 456 playes who are all deeply in debt. The players are made to wear green tacksuits and are kept under watch a t all times by masked guqrds in pink jumpsuits, with the games overseen by the Front Man, who wears a black mask and black uniform.",
                            style: tt,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
