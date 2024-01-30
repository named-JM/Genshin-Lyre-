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
            color: isButtonPressed ? Colors.grey[100] : Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            boxShadow: isButtonPressed
                ? [
                    //no shadows if button pressed
                  ]
                : [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(5, 5),
                      blurRadius: 20,
                      spreadRadius: 1,
                    ),
                    // Top left shadow is lighter
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ]),
      ),
    );
  }
}
