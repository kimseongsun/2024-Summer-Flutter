// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter app',
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//         primarySwatch: Colors.orange,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var myTeam = 0;
//   var enemy = 0;
//   var win = 0;
//   var draw = 0;
//   var lose = 0;
//
//   void incrementTeamScore(){
//     setState(() {
//       myTeam++;
//     });
//   }
//   void incrementEnemyScore(){
//     setState(() {
//       enemy++;
//     });
//   }
//
//   void gameOver (){
//     setState(() {
//       if(myTeam == enemy) {
//         draw++;
//       }
//
//       else if(myTeam > enemy) {
//         win++;
//       }
//       else{
//         lose++;
//       }
//     });
//   }
//
//   void resetButton (){
//     setState(() {
//       win = 0;
//       lose = 0;
//       draw = 0;
//       myTeam = 0;
//       enemy = 0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Soccer game"),
//         backgroundColor: Colors.blueAccent,
//       ),
//
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image(
//               image: AssetImage('assets/smaple.PNG'),
//               width: 100,
//             ),
//             ElevatedButton(
//                 onPressed: (){}, child: Text("Reset Game")),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text("Your Team"),
//                 Text("Enemy"),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text("${myTeam}"),
//                 Text(":"),
//                 Text("${enemy}"),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                     onPressed: incrementTeamScore, child: Text("Goal")),
//                 ElevatedButton(
//                     onPressed: incrementEnemyScore, child: Text("Goal")),
//               ],
//             ),
//             ElevatedButton(onPressed: gameOver, child: Text("Game Over")),
//             Text("Set Score"),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text("Win: ${win}"),
//                 Text("Draw: ${draw}"),
//                 Text("Lose: ${lose}"),
//               ],
//             )
//           ],
//         ),
//       ),
//
//       floatingActionButton: FloatingActionButton(onPressed: resetButton, child: Icon(Icons.reset_tv),),
//
//
//
//
//
//     );
//   }
// }
//
//
//
//
