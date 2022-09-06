import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Newmessage extends StatelessWidget {
  const Newmessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xff17afb4),
      width: size.width,
      height: size.height * 0.090,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                size: 30,
                color: Colors.white,
              ),
            ),
            Text(
              "You have new pickup request",
              style: TextStyle(
                  letterSpacing: 0.5, color: Colors.white, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
