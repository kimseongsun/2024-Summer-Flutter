import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpractice/providers/Scenario_Manager.dart';
import 'package:provider/provider.dart';
import 'providers/Scenario_c_provider.dart';

class c_2_enterTheStore_left extends StatefulWidget {
  const c_2_enterTheStore_left({super.key});

  @override
  State<c_2_enterTheStore_left> createState() => _c_2_enterTheStore_leftState();
}

class _c_2_enterTheStore_leftState extends State<c_2_enterTheStore_left> {
  String actors_image = "";

  @override
  void initState() {
    super.initState();
    // 1초 지연 후에 actors_image를 설정
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        actors_image = "assets/actor_sample.png";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Scenario_Manager>(
      builder: (context, sinarioProvider, child) {
        return Center(
          child: Stack(
            children: [
              // 배경 이미지 (아래쪽에 위치)
              Positioned.fill(
                child: Image(
                  image: AssetImage("assets/c_inside.PNG"),
                ),
              ),
              // 배우 이미지 (위쪽에 위치)
              Positioned.fill(
                child: actors_image != ""
                    ? Image(
                  image: AssetImage(actors_image),
                )
                    : SizedBox.shrink(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class c_2_enterTheStore_right extends StatefulWidget {
  const c_2_enterTheStore_right({super.key});

  @override
  State<c_2_enterTheStore_right> createState() => _c_2_enterTheStore_rightState();
}

class _c_2_enterTheStore_rightState extends State<c_2_enterTheStore_right> {

  String Facechoice = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Provider.of<Scenario_Manager>(context, listen: false)
                        .updateIndex();
                  },
                  child: Icon(
                    Icons.sentiment_neutral, // 웃는 이모티콘
                    size: 100,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.sentiment_very_dissatisfied, // 화난 이모티콘
                    size: 100,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.sentiment_satisfied_alt_outlined, // 슬픈 이모티콘
                    size: 100,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
