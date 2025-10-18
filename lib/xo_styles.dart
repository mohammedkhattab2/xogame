import 'package:flutter/material.dart';

abstract final class XoColors {
  static const red = Color(0xffF54D62);
  static const green = Color(0xff87E43A);
}

abstract final class xotextStyles {
  static const TextStyle black32semiBold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const TextStyle whight36bold = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static const TextStyle whight40w900 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );
  static const TextStyle whight24meduim = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}

abstract final class Xoassets {
  static const String iconO = "assets/icono.png";
  static const String iconX = "assets/iconx.png";
  static const String pickplayer = "assets/pickplayer.png";
}
