import 'package:flutter/material.dart';
import 'package:xogame/xo_styles.dart';

class Xobutton extends StatelessWidget {
  final String symbol;
  final Function onclick;
  final int index;

  const Xobutton({super.key, required this.symbol, required this.onclick,required this.index});

  @override
  Widget build(BuildContext context) {
    Widget image;
    if (symbol == "x" || symbol == "0") {
      image = Image.asset(symbol == "x" ? Xoassets.iconX : Xoassets.iconO);
    } else {
      image = SizedBox(
        width: double.infinity,
        height: double.infinity,
      );
    }
    return Expanded(child: InkWell(
      onTap: () {
        onclick(index);
      },
      child: image));
  }
}
