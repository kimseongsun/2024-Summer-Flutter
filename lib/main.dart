import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'providers/Scenario_c_provider.dart';
import 'package:provider/provider.dart';
import 'providers/Scenario_Manager.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);

  runApp(
    ChangeNotifierProvider<Scenario_Manager>(
      create: (context) => Sinario_c_provider(),
      //if문 써서 시나리오를 가져옴

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scenario_Canvas(),
    );
  }
}

class Scenario_Canvas extends StatefulWidget {
  const Scenario_Canvas({super.key});

  @override
  State<Scenario_Canvas> createState() => _Scenario_CanvasState();
}

class _Scenario_CanvasState extends State<Scenario_Canvas> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(Provider.of<Scenario_Manager>(context, listen: false).title, style: TextStyle(fontSize: 22,), textAlign: TextAlign.center,),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Consumer<Scenario_Manager>(
                  builder: (context, sinarioProvider, child) {
                    return Container(
                      width: 400,
                      height: 275,
                      decoration: BoxDecoration(
                        color: Color(0xfff0dff2),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      child: sinarioProvider.leftScreen[sinarioProvider.index],
                    );
                  },
                ),

                Consumer<Scenario_Manager>(
                  builder: (context, sinarioProvider, child) {
                    return Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff0dff2),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      child: sinarioProvider.rightScreen[sinarioProvider.index]
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
