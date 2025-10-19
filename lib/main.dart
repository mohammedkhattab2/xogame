import 'package:flutter/material.dart';
import 'package:xogame/pickplayerscreen.dart';
import 'package:xogame/xo_game_bord.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Pickplayerscreen.routname,
      routes:{
        XoGameBord.routname : (_) => XoGameBord(),
        Pickplayerscreen.routname : (_) => Pickplayerscreen()
      } 
    );
  }
}