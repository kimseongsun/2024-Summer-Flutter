import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpractice/providers/Scenario_Manager.dart';
import 'package:provider/provider.dart';
import 'providers/Scenario_c_provider.dart';


class c_3_display_left extends StatefulWidget {
  const c_3_display_left({super.key});

  @override
  State<c_3_display_left> createState() => _c_3_display_leftState();
}

class _c_3_display_leftState extends State<c_3_display_left> {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("assets/c_display.PNG"));
  }
}

class c_3_display_right extends StatefulWidget {
  const c_3_display_right({super.key});

  @override
  State<c_3_display_right> createState() => _c_3_display_rightState();
}

class _c_3_display_rightState extends State<c_3_display_right> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            setState(() {
              Provider.of<Scenario_Manager>(context, listen: false).updateIndex();
            });
          },
          child: Text("도와주세요!"),
        ),
      ),
    );
  }
}
