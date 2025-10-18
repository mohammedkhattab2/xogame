import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xogame/xo_styles.dart';
import 'package:xogame/xobutton.dart';

class XoGameBord extends StatefulWidget {
  static const routname = "XoGameBord";
  const XoGameBord({super.key});

  @override
  State<XoGameBord> createState() => _XoGameBordState();
}

class _XoGameBordState extends State<XoGameBord> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      // setState(() {});
    });
  }
  List <String> bord = ["", "", "", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff00D2FF), Color(0xff3A7BD5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTimer(),
              SizedBox(height: 32),
              buildPlayerTurn(),
              SizedBox(height: 24),
              buildGameBord(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTimer() {
    int second = timer.tick;
    int minute = second ~/ 60; 
    return Container(
      margin: EdgeInsets.only(top: 25, left: 16, right: 16),
      padding: EdgeInsets.only(top: 19, bottom: 18, left: 135, right: 135),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(44),
      ),
      child: Text(
        "${minute>=10 ? minute : "0$minute"}:${(second % 60) >= 10 ? (second % 60) : "0${(second % 60)}"}",
        textAlign: TextAlign.center,
        style: xotextStyles.black32semiBold,
      ),
    );
  }

  Widget buildPlayerTurn() => Text(
    "Player 1’s Turn",
    textAlign: TextAlign.center,
    style: xotextStyles.whight36bold,
  );

  Widget buildGameBord() => Expanded(
    child: Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(44),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Xobutton(symbol: bord[0], onclick: onPlayerClick, index: 0),
                    Xobutton(symbol: bord[1],onclick: onPlayerClick, index: 1),
                    Xobutton(symbol: bord[2],onclick: onPlayerClick, index: 2),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Xobutton(symbol: bord[3], onclick: onPlayerClick, index: 3),
                    Xobutton(symbol: bord[4], onclick: onPlayerClick, index: 4),
                    Xobutton(symbol: bord[5], onclick: onPlayerClick, index: 5),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Xobutton(symbol: bord[6], onclick: onPlayerClick, index: 6),
                    Xobutton(symbol: bord[7], onclick: onPlayerClick, index: 7),
                    Xobutton(symbol: bord[8], onclick: onPlayerClick, index: 8),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
                indent: 22,
                endIndent: 22,
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
                indent: 22,
                endIndent: 22,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 22,
                endIndent: 22,
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 22,
                endIndent: 22,
              ),
            ],
          ),
        ],
      ),
    ),
  );
void onPlayerClick (int index){
  bord[index] = "x";
  setState(() {
    
  });
}
}
