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
//
//     return MaterialApp(
//       title: 'Flutter App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         primaryColor: Colors.orange,
//       ),
//       home: const MyHomePage(),
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
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter App"),
//           backgroundColor: Colors.blue,
//           actions: [
//             IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
//           ],
//           bottom: const TabBar(
//               tabs:[
//                 Tab(icon: Icon(Icons.tag_faces)),
//                 Tab(text: 'Menu'),
//                 Tab(icon: Icon(Icons.info), text: 'info',),
//               ]
//           ),
//         ),
//
//         body: TabBarView(
//           children: [
//             Tab(
//               child: Column(
//                 children: [
//                   Align(
//                     child: Container(
//                       margin: EdgeInsets.all(8.0),
//                       color: Colors.red,
//                       width: 100,
//                       height: 100,
//                     ),
//                   ),
//                   Container(
//                     color: Colors.green,
//                     width: 100,
//                     height: 100,
//                   )
//
//                 ],
//               ),
//             ),
//             Tab(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     color: Colors.red,
//                     width: 100,
//                     height: 100,
//                   ),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.green,
//                       width: 100,
//                       height: 100,
//                     ),
//                   ),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.blue,
//                       width: 100,
//                       height: 100,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Tab(
//               child: Column(
//                 children: [
//                   Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     color: Colors.amber,
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       child: Center(child: Text("Card")),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: (){},
//                     child: Text("Text"),
//                   ),
//                   IconButton(
//                       onPressed: (){},
//                       icon: Icon(Icons.face)
//                   ),
//                   FloatingActionButton(
//                     onPressed: (){},
//                     child: Text("Good"),
//
//                   ),
//                   CircularProgressIndicator(),
//                   LinearProgressIndicator(),
//
//                 ],
//               ),
//             )
//
//
//           ],
//
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.refresh),),
//
//
//
//
//
//
//         /*body: GridView.count(
//             crossAxisCount: 3,
//           children: [
//             Container(
//               color: Colors.orange,
//               width:100,
//               height: 100,
//               margin: const EdgeInsets.all(8.0),
//             ),
//             Container(
//               color: Colors.orange,
//               width:100,
//               height: 100,
//               margin: const EdgeInsets.all(8.0),
//             ),
//             Container(
//               color: Colors.orange,
//               width:100,
//               height: 100,
//               margin: const EdgeInsets.all(8.0),
//             ),
//             Container(
//               color: Colors.orange,
//               width:100,
//               height: 100,
//               margin: const EdgeInsets.all(8.0),
//             ),
//           ],
//         ),*/
//
//         bottomNavigationBar: BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//           ],
//         ),
//
//
//         drawer: const Drawer(),
//       ),
//     );
//   }
// }
