import 'dart:math';

import 'package:flutter/material.dart';

void main(){
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keys"),
        backgroundColor: Colors.green,
      ),
      body: MyForm(),




    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  StudentResult studentResult = StudentResult(0, 0, 0, 0, true);

  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mid-term exam',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Insert texts';
                }else if(int.tryParse(value) == null){
                  return 'Insert some integar';
                }
                return null;
              },
              onSaved: (value){
                studentResult.midTermExam = int.parse(value!);
              },
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Additional Point',
              ),
              value: studentResult.additionalPoint,
              items: List.generate(11, (i) {
                if(i == 0){
                  return DropdownMenuItem(
                    value: i-1,
                    child: Text("Choose the additional point"),
                  );
                }
                return DropdownMenuItem(
                  value: i-1,
                  child: Text('${i-1}point'),
                );
              }),
              onChanged: (value){
                setState(() {
                  studentResult.additionalPoint = value!;
                });
              },
              validator: (value){
                if(value == 0){
                  return "Please select the point";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'final-term exam',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Insert texts';
                }else if(int.tryParse(value) == null){
                  return 'Insert some integar';
                }
                return null;
              },
              onSaved: (value){
                studentResult.finalTermExam = int.parse(value!);
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  if(formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Processing data"),
                    ));
                    formKey.currentState!.save();
                    print(studentResult);
                  }
                });
              },
              child: Text("Enter"),
            ),
          ],
        ),
      ),
    );
  }
}


class StudentResult {
  int midTermExam;
  int finalTermExam;
  int teamLeaderPoint;
  int additionalPoint;
  bool attandance;

  StudentResult(this.midTermExam, this.finalTermExam, this.teamLeaderPoint,
      this.additionalPoint, this.attandance);

  @override
  String toString() {
    return 'StudentResult{midTermExam: $midTermExam, finalTermExam: $finalTermExam, teamLeaderPoint: $teamLeaderPoint, additionalPoint: $additionalPoint, attandance: $attandance}';
  }

}
