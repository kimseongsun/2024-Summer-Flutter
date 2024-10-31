import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpractice/providers/Scenario_Manager.dart';
import 'package:provider/provider.dart';
import 'providers/Scenario_c_provider.dart';
import 'tts.dart';
import 'package:audioplayers/audioplayers.dart';

final AudioPlayer _audioPlayer = AudioPlayer();

class c_6_display_left extends StatefulWidget {
  const c_6_display_left({super.key});

  @override
  State<c_6_display_left> createState() => _c_6_display_leftState();
}

class _c_6_display_leftState extends State<c_6_display_left> {

  final TTS tts = TTS();

  @override
  void initState() {
    super.initState();
    _playWelcomeTTS();
  }

  Future<void> _playWelcomeTTS() async {

    await tts.TextToSpeech("편의점을 나가기 전에 놓고 온 물건이 있나요? 카드는 다시 챙겼나요? 혹시 모르니 앞으론 편의점을 나가기 전에 다시 한 번 생각해주세요",
        "ko-KR-Wavenet-D");

    await Future.delayed(Duration(seconds: 10));

    await tts.TextToSpeech("안녕히 가세요",
        "ko-KR-Wavenet-D");

    await Future.delayed(Duration(seconds: 2));

    await tts.TextToSpeech("편의점 직원분께서 잘 가라고 인사를 해주시네요 우리도 같이 인사해 볼까요? 오른쪽 화면의 버튼을 클릭해 소리내어 안녕히가세요라고 인사를 해 보세요",
        "ko-KR-Wavenet-D");

    await Future.delayed(Duration(seconds: 10));

    await tts.TextToSpeech("잘 하셨습니다. 이제 오른쪽 화면의 문을 터치해 편의점을 나가보세요",
        "ko-KR-Wavenet-D");

    await Future.delayed(Duration(seconds: 4));

  }

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
            await _audioPlayer.play(AssetSource("effect_door.mp3"));
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

