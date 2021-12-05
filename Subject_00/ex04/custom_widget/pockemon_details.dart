import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PoketmonDetails extends StatelessWidget {
  const PoketmonDetails({
    Key key,
    @required this.mainImageUrl,
    @required this.headerText,
    @required this.MainText,
    @required this.descriptionText,
  }) : super(key: key);

  final String mainImageUrl;
  final TextStyle headerText;
  final TextStyle MainText;
  final TextStyle descriptionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFCDA6E),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(mainImageUrl).image,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Name",
              style: headerText,
            ),
            Text(
              "Pickachu",
              style: MainText,
            ),
            Text(
              "Level",
              style: headerText,
            ),
            Text(
              "Lv.4",
              style: MainText,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Body Blow",
                  style: descriptionText,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Eletric Shocks",
                  style: descriptionText,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Electro Bail",
                  style: descriptionText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
