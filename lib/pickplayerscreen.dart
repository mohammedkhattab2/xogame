import 'package:flutter/material.dart';
import 'package:xogame/xo_styles.dart';

class Pickplayerscreen extends StatelessWidget {
  static const routname = "Pickplayerscreen";
  const Pickplayerscreen({super.key});

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
            spacing: 24,
            children: [
              SizedBox(height: 60,),

              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage(Xoassets.pickplayer))
                  ),
                  child:
                   Center(child: Text("Tix-Tac-Toe", style: xotextStyles.whight40w900,))),
              ),
              Text("Pick who goes first?",style: xotextStyles.whight24meduim, textAlign: TextAlign.center,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 26, right: 16 ,left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white
                      ),
                      child: Image.asset(Xoassets.iconX),
                    )
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 26, right: 16 ,left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white
                      ),
                      child: Image.asset(Xoassets.iconO),
                    )
                  )
                ],
              )
              ],
          ),
        ),
      ),
    );
  }
}