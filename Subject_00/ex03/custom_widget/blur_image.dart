import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlurImage extends StatelessWidget {
  const BlurImage({
    Key key,
    @required this.mainImageUrl,
  }) : super(key: key);

  final String mainImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.transparent,
            Colors.transparent,
            Colors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8, 0.1, 0.9],
        ),
      ),
      child: Image.network(mainImageUrl),
    );
  }
}
