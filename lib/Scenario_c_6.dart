import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpractice/providers/Scenario_Manager.dart';
import 'package:provider/provider.dart';
import 'providers/Scenario_c_provider.dart';


class c_6_display_left extends StatefulWidget {
  const c_6_display_left({super.key});

  @override
  State<c_6_display_left> createState() => _c_6_display_leftState();
}

class _c_6_display_leftState extends State<c_6_display_left> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Scenario_Manager>(
        builder: (context, sinarioProvider, child) {
          return Center(
            child: Stack(
              children: [
                Image(image: AssetImage("assets/c_exit.webp")),
              ],
            ),
          );
        },
      ),
    );
  }
}

class c_6_display_right extends StatefulWidget {
  const c_6_display_right({super.key});

  @override
  State<c_6_display_right> createState() => _c_6_display_rightState();
}

class _c_6_display_rightState extends State<c_6_display_right> {
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

