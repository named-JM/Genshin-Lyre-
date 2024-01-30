// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final onTap;
  bool isButtonPressed;

  PlayButton({this.onTap, required this.isButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300), //<--- to make it smoother
        height: 95,
        width: 300,
        child: Center(
            child: Text(
          "PLAY",
          style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w900,
              color: isButtonPressed ? Colors.grey[600] : Colors.black),
        )),
        decoration: BoxDecoration(
            color: isButtonPressed ? Colors.white : Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            boxShadow: isButtonPressed
                ? [
                    //no shadows if button pressed
                  ]
                : [
                    //darker bot right
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(6, 6),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                    //lighter top left
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -3),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ]),
      ),
    );
  }
}
