import 'package:flutter/material.dart';
import 'package:flutterpractice/providers/Scenario_Manager.dart';
import 'package:provider/provider.dart';

class c_1_enterTheStore_left extends StatefulWidget {
  const c_1_enterTheStore_left({super.key});

  @override
  State<c_1_enterTheStore_left> createState() => _c_1_enterTheStore_leftState();
}

class _c_1_enterTheStore_leftState extends State<c_1_enterTheStore_left> {
  @override
  Widget build(BuildContext context) {

    return Image(image: AssetImage("assets/c_outside.PNG"));
  }
}

class c_1_enterTheStore_right extends StatefulWidget {
  const c_1_enterTheStore_right({super.key});

  @override
  State<c_1_enterTheStore_right> createState() => _c_1_enterTheStore_rightState();
}

class _c_1_enterTheStore_rightState extends State<c_1_enterTheStore_right> {
  String door_image = "assets/door_closed.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () async {
            setState(() {
              door_image = "assets/door_open.png";
              print("door_image: $door_image");
            });
            await Future.delayed(Duration(seconds: 1));
            setState(() {
              door_image = "";
              print("door_image: $door_image");
            });
            Provider.of<Scenario_Manager>(context, listen: false)
                .updateIndex();
          },
          child: Center(
            child: door_image != ""
                ? Image(
              image: AssetImage(door_image),
            )
                : SizedBox.shrink(),
          )
      ),
    );
  }
}


