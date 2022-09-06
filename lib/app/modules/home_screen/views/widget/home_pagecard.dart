import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homecard extends StatelessWidget {
  const Homecard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.380,
      height: size.height * 0.300,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 23, 92, 148),
          borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Today's Pickup    Jobs",
              maxLines: 3,
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "5",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
