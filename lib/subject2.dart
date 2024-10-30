import 'package:flutter/material.dart';

enum Team{Leader, Member}

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
  final midTermController = TextEditingController();
  final finalTermController = TextEditingController();

  Team team = Team.Leader;

  final additionPoints = List.generate(10, (i) => "$i point");
  var selectedPoint = "0 point";

  var checkBox = true;

  var totalPoints = 0;

  var grade = "B";

  void dispose(){
    midTermController.dispose();
    finalTermController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grade Calculator"),
        backgroundColor: Colors.orange,
        actions: [Icon(Icons.add)],
      ),

      body: Center(
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mid Term Exam',
              ),
              controller: midTermController,
              keyboardType: TextInputType.number,
            ),
            Container(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Final Exam',
              ),
              controller: finalTermController,
              keyboardType: TextInputType.number,
            ),
            RadioListTile(
                title: Text("Project Team Leader(+10)"),
                value: Team.Leader,
                groupValue: team,
                onChanged: (value){
                  setState(() {
                    team = value!;
                    totalPoints += 10;
                  });
                }
            ),
            RadioListTile(
                title: Text("Project Team Member"),
                value: Team.Member,
                groupValue: team,
                onChanged: (value){
                  setState(() {
                    team = value!;
                  });
                }
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Additional point"),
                DropdownButton(
                    value: selectedPoint,
                    items: additionPoints.map(
                            (point) => DropdownMenuItem(
                            value: point,
                            child: Text(point))).toList(),
                    onChanged: (value){
                      setState(() {
                        selectedPoint = value!;
                      });
                    }
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Absense less than 4"),
                Checkbox(
                    value: checkBox,
                    onChanged: (value){
                      setState(() {
                        checkBox = value!;
                      });
                    }
                )

              ],
            ),
            Text("$grade", style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  totalPoints += int.parse(midTermController.text.trim());
                  totalPoints += int.parse(finalTermController.text.trim());

                  if(!checkBox){
                    grade = "F";
                  }
                  else if(totalPoints >= 170){
                    grade = "A";
                  }
                  else if(totalPoints >= 150){
                    grade = "B";
                  }
                  else if(totalPoints >= 130){
                    grade = "C";
                  }
                  else if(totalPoints >= 110){
                    grade = "D";
                  }

                });
              },
              child: Text("Enter"),
            ),


          ],
        ),
      ),




      drawer: Drawer(),
    );
  }
}

