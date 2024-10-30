import 'package:flutter/material.dart';
import 'package:flutterpractice/StepData.dart';
import 'package:flutterpractice/providers/Scenario_Manager.dart';
import 'Scenario_Manager.dart'; // 부모 클래스 파일 임포트

import '../Scenario_c_1.dart';
import '../Scenario_c_2.dart';
import '../Scenario_c_3.dart';
import '../Scenario_c_4.dart';
import '../Scenario_c_5.dart';
import '../Scenario_c_6.dart';

class Sinario_c_provider extends Scenario_Manager {
  @override
  String get title => "편의점을 가보자!";

  @override
  List<Widget> get leftScreen => [
    c_1_enterTheStore_left(),
    c_2_enterTheStore_left(),
    c_3_display_left(),
    c_4_display_left(),
    c_5_display_left(),
    c_6_display_left()
  ];

  @override
  List<Widget> get rightScreen => [
    c_1_enterTheStore_right(),
    c_2_enterTheStore_right(),
    c_3_display_right(),
    c_4_display_right(),
    c_5_display_right(),
    c_6_display_right()
  ];
}
