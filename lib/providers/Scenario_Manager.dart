import 'package:flutter/material.dart';
import '../StepData.dart';

abstract class Scenario_Manager extends ChangeNotifier {

  int _index = 0;
  List<StepData> _stepDatas = [];

  int get index => _index;
  List<StepData> get stepDatas => _stepDatas;

  String get title;
  List<Widget> get leftScreen;
  List<Widget> get rightScreen;
  //abstract으로 정의, 자식 Provider에서 구현하게 됨

  void updateIndex() {
    _index++;
    notifyListeners();
  }

  void addStepInfo(String question, String response) {
    _stepDatas.add(StepData(
      title: title,
      scene_id: _index,
      question: question,
      response: response,
    ));
  }
}