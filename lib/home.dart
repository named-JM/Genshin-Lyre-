import 'package:flutter/material.dart';
import 'package:genshin_lyre_simulation/button_custom/playbtn.dart';
import 'package:genshin_lyre_simulation/lyre.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create tapping sounds
  //late AudioPlayer player;

  bool isButtonPressed = false;

  void buttonPressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;

        Future.delayed(Duration(milliseconds: 300), () {
          setState(() {
            isButtonPressed = false;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GenshinLyre()));
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/images/gif/genshin-impact.gif"),
                fit: BoxFit.cover)),
        child: Center(
          child: PlayButton(
              onTap: buttonPressed, isButtonPressed: isButtonPressed),
        ),
      ),
    );
  }
}
