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

  List items = List.generate(20, (i) => i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keys"),
        backgroundColor: Colors.green,
      ),
      body: ReorderableListView.builder(
        itemCount: items.length,
        itemBuilder: (c,i){
          return Dismissible(
              background: Container(color: Colors.green),
              key: ValueKey(items[i]),
              child: ListTile(
                title: Text("Student ${items[i]}"),
                leading: const Icon(Icons.home),
                trailing: const Icon(Icons.navigate_next),
              ),
              onDismissed: (direction){
                setState(() {
                  items.removeAt(i);
                  print(items);
                });
              }
          );

        },
        onReorder: (int oldIndex, int newIndex){
          setState(() {
            if (oldIndex < newIndex){
              newIndex -= 1;
            }
            items.insert(newIndex, items.removeAt(oldIndex));
            print(items);
          });
        },
      ),


    );
  }
}


