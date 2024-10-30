import 'package:flutter/material.dart';
import 'package:flutter/services.dart';//가로 모드 고정 시 필요함
import 'package:flutter_svg/flutter_svg.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  //가로 모드 고정, 다른 방법도 있음

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> right_screen = [];
  List<String> left_screen = [];

  String c_outside = "assets/c_outside.svg";
  String c_inside = "assets/c_inside.svg";
  String c_display = "assets/c_display.svg";
  String c_display_empty = "assets/c_display_empty.svg";

  String door_open = "assets/door_open.PNG";
  String door_closed = "assets/door_closed.PNG";

  int right_index = 0;
  int left_index = 0;

  @override
  void initState() {
    super.initState();

    left_screen.add(c_outside);
    left_screen.add(c_inside);
    left_screen.add(c_display);
    left_screen.add(c_display_empty);

    right_screen.add(door_closed);
    right_screen.add(door_open);
  }

  void change_right_screen() {
    setState(() {
      right_index = (right_index + 1) % right_screen.length;
    });
  }

  void change_left_screen() {
    setState(() {
      left_index = (left_index + 1) % left_screen.length;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Text("편의점에 들어가보자!", style: TextStyle(fontSize: 22,), textAlign: TextAlign.center,),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 400,
                  height: 275,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // 둥근 모서리, 숫자가 클수록 더 둥글게 됨
                    border: Border.all(
                      color: Colors.black, // 윤곽선 색상
                      width: 1, // 윤곽선 두께
                    ),
                  ),

                  //============아래 child 부분 컴포넌트화 해서 계속해서 교체
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        left_screen[left_index],
                        semanticsLabel: 'Convenience Store Icon',
                      ),
                      Image(image: AssetImage("assets/actor_sample.PNG")),
                    ],
                  ),
                ),

                Column(
                  children: [
                    Text("문을 터치해 보아요!", style: TextStyle(fontSize: 20),),
                    Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // 둥근 모서리, 숫자가 클수록 더 둥글게 됨
                        border: Border.all(
                          color: Colors.black, // 윤곽선 색상
                          width: 1, // 윤곽선 두께
                        ),
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              change_right_screen();
                              change_left_screen();
                            });
                          },
                          child: Image(image: AssetImage(right_screen[right_index]),
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TEMP extends StatefulWidget {
  const TEMP({super.key});

  @override
  State<TEMP> createState() => _TEMPState();
}

class _TEMPState extends State<TEMP> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

