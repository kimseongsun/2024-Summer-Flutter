// import 'package:flutter/material.dart';
//
// enum Language {cpp, python, dart}
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
//       title: "Flutter App",
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
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
//   bool _isChecked = true;
//   bool _isChecked2 = true;
//
//   Language language = Language.cpp;
//
//   final valueList = List.generate(10, (i) => 'Student $i');
//   var selectedValue = 'Student 0';
//
//   final _myController = TextEditingController();
//   final _myController2 = TextEditingController();
//
//   var _obesity = "Normal";
//
//   void dispose(){
//     _myController.dispose();
//     _myController2.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter App"),
//         backgroundColor: Colors.cyan,
//         actions: [Icon(Icons.add)],
//       ),
//
//       // body: ListView(
//       //   children: [
//       //     CheckboxListTile(
//       //       title: Text("Test"),
//       //       value: _isChecked,
//       //       onChanged: (value){
//       //         setState(() {
//       //           _isChecked = value!;
//       //           print(value);
//       //         });
//       //       },
//       //     ),
//       //     CheckboxListTile(
//       //       title: Text("Test2"),
//       //         value: _isChecked2,
//       //         onChanged: (value){
//       //         setState(() {
//       //           _isChecked2 = value!;
//       //         });
//       //         }),
//       //   ],
//       // ),
//
//       // body: ListView(
//       //   children: [
//       //     RadioListTile(
//       //       title: Text("Python"),
//       //         value: Language.python,
//       //         groupValue: language,
//       //         onChanged: (value){
//       //           setState(() {
//       //             language = value!;
//       //           });
//       //         }
//       //     ),
//       //     RadioListTile(
//       //         title: Text("cpp"),
//       //         value: Language.cpp,
//       //         groupValue: language,
//       //         onChanged: (value){
//       //           setState(() {
//       //             language = value!;
//       //           });
//       //         }
//       //     ),
//       //     RadioListTile(
//       //         title: Text("dart"),
//       //         value: Language.dart,
//       //         groupValue: language,
//       //         onChanged: (value){
//       //           setState(() {
//       //             language = value!;
//       //           });
//       //         }
//       //     ),
//       //   ],
//       // ),
//
//       // body: Center(
//       //   child: DropdownButton(
//       //       value: selectedValue,
//       //       items: valueList.map(
//       //           (student) => DropdownMenuItem(
//       //             value: student,
//       //               child: Text(student)
//       //           )).toList(),
//       //       onChanged: (value){
//       //         setState(() {
//       //           selectedValue = value!;
//       //         });
//       //       }
//       //   ),
//       //
//       // ),
//
//       body: Column(
//         children: [
//           Container(
//             height: 100,
//           ),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Height',
//             ),
//             controller: _myController,
//             keyboardType: TextInputType.number,
//           ),
//           Container(
//             height: 20,
//           ),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Weight',
//             ),
//             controller: _myController2,
//             keyboardType: TextInputType.number,
//           ),
//           Text("$_obesity", style: TextStyle(fontSize: 20),),
//           ElevatedButton(
//             onPressed: (){
//               setState(() {
//                 var heightValue = double.parse(_myController.text.trim());
//                 var weightValue = double.parse(_myController2.text.trim());
//
//                 if (weightValue / (heightValue * heightValue) > 25){
//                   _obesity = "Obestiy";
//                 }
//                 else{
//                   _obesity = "Normal";
//                 }
//
//               });
//             },
//             child: Text("Press button"),
//           ),
//
//
//         ],
//       ),
//
//
//       drawer: Drawer(),
//
//
//     );
//   }
// }
//
