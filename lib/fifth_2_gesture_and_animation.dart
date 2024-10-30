import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

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

  String text = '';
  double squareside = 100;
  //String이라고 명시해서 ${}로 String으로 변환안해도 됨

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        backgroundColor: Colors.orange,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: AnimatedContainer(
                width: squareside,
                height: squareside,
                color: Colors.orange,
                duration: Duration(seconds: 1),
              ),
              onTap:(){
                setState(() {
                  if(text == ''){
                    text = 'This is an orangeSquare';
                  } else{
                    text = '';
                  }
                });
              },
              // onLongPress: (){
              //   setState(() {
              //     if(text == ''){
              //       text = "this is an orangeSuqre";
              //     }else {
              //       text = '';
              //     }
              //   });
              // },
              onLongPress: (){
                setState(() {
                  if (squareside >75){
                    squareside = 50;
                    text = "";
                  } else{
                    squareside = 100;
                    text = "This is normal orange square";
                  }
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(text, style: TextStyle(
              fontSize: 20,
            ),)
          ],
        ),
      ),

    );
  }
}

