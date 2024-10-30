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
//       title: 'Flutter App',
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
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Fluuter App"),
//         backgroundColor: Colors.blue,
//         actions: [
//           IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
//         ],
//       ),
//       // body: Center(
//       //   child: Stack(
//       //
//       //     alignment: Alignment.center,
//       //
//       //     children: [
//       //       Container(
//       //         color: Colors.red,
//       //         width: 200,
//       //         height: 200,
//       //         padding: EdgeInsets.all(8.0),
//       //         margin: EdgeInsets.all(8.0),
//       //       ),
//       //       Container(
//       //         color: Colors.blue,
//       //         width: 150,
//       //         height: 150,
//       //         padding: EdgeInsets.all(8.0),
//       //         margin: EdgeInsets.all(8.0),
//       //       ),
//       //       Container(
//       //         color: Colors.green,
//       //         width: 100,
//       //         height: 100,
//       //         padding: EdgeInsets.all(8.0),
//       //         margin: EdgeInsets.all(8.0),
//       //       ),
//       //     ],
//       //
//       //   ),
//       // ),
//
//       body: ListView(
//         children: [
//           ListTile(
//             leading: Icon(Icons.home),
//             title: Text("Home"),
//             trailing: const Icon(Icons.navigate_before),
//             onTap: (){},
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 color: Colors.blue,
//                 width: 100,
//                 height: 100,
//               ),
//               Container(
//                 color: Colors.orange,
//                 width: 100,
//                 height: 100,
//               ),
//             ],
//           )
//         ],
//       ),
//
//
//
//     );
//   }
// }
//
//
