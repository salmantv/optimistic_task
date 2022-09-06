import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Downcard extends StatelessWidget {
  Downcard(
      {Key? key,
      required this.cardtext,
      required this.howmuch,
      required this.color})
      : super(key: key);
  final String cardtext;
  final String howmuch;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.540,
      height: size.height * 0.150,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cardtext,
              maxLines: 3,
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  howmuch,
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
