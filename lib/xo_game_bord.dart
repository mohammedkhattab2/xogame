import 'package:flutter/material.dart';
import 'package:xogame/xo_styles.dart';
import 'package:xogame/xobutton.dart';

class XoGameBord extends StatelessWidget {
  static const routname = "XoGameBord";
  const XoGameBord({super.key});

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
              SizedBox(height: 32,),
               buildPlayerTurn(),
               SizedBox(height: 24,),
                buildGameBord()],
          ),
        ),
      ),
    );
  }

  Widget buildTimer() => Container(
    margin: EdgeInsets.only(top:25, left: 16, right: 16),
    padding: EdgeInsets.only(top: 19 , bottom: 18 , left: 135 , right: 135),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(44)
    ),
    child: 
    Text("01:15", textAlign: TextAlign.center,style: xotextStyles.black32semiBold,),
  );

  Widget buildPlayerTurn() => Text("Player 1’s Turn", textAlign: TextAlign.center, style: xotextStyles.whight36bold,);

  Widget buildGameBord() => Expanded(
    child: Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(44)
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Xobutton(symbol: "o"),
                    Xobutton(symbol: "x"),
                    Xobutton(symbol: ""),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Xobutton(symbol: ""),
                    Xobutton(symbol: "x"),
                    Xobutton(symbol: "x")
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Xobutton(symbol: "0"),
                    Xobutton(symbol: "x"),
                    Xobutton(symbol: "0"),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [             
              VerticalDivider(color: Colors.black, thickness: 1,indent: 22,endIndent: 22,),              
              VerticalDivider(color:Colors.black, thickness: 1,indent: 22,endIndent: 22,),    
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Divider(color: Colors.black, thickness: 1,indent: 22,endIndent: 22,),
              Divider(color: Colors.black, thickness: 1,indent: 22,endIndent: 22,),
            ],
          )
        ],
      ),
    ),
  );
}
