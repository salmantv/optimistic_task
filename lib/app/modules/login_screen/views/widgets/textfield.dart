import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ModelTextfield extends StatelessWidget {
  ModelTextfield(
      {Key? key,
      required this.iconData,
      required this.textEditingController,
      required this.label})
      : super(key: key);
  final IconData iconData;
  final String label;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            label: Text(label),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            prefixIcon: Icon(iconData),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(7.0),
            )),
      ),
    );
  }
}
