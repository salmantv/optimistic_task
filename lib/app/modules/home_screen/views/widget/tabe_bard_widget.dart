import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tabebar extends StatelessWidget {
  const Tabebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delivery_dining_sharp,
                size: 37,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.all_inbox,
                size: 37,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.local_shipping,
                size: 37,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                size: 37,
              )),
        ],
      ),
    );
  }
}
