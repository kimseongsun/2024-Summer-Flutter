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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Grade Calculator"),
          backgroundColor: Colors.deepPurple,
          actions: [Icon(Icons.add)],
          bottom: TabBar(
            tabs: [
              Text("information"),
              Text("List"),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              Tab(
                child: MyForm(),

              ),
              Tab(
                child: ReorderableListView.builder(
                  itemCount: personList.length,
                  itemBuilder: (c,i){
                    return Dismissible(
                        background: Container(color: Colors.green),
                        key: ValueKey(personList[i]),
                        child: ListTile(
                          title: Text("${personList[i].name}: ${personList[i].projectPoint + personList[i].additionalPoint}"),
                          leading: const Icon(Icons.home),
                        ),
                        onDismissed: (direction){
                          setState(() {
                            personList.removeAt(i);
                          });
                        }
                    );

                  },
                  onReorder: (int oldIndex, int newIndex){
                    setState(() {
                      if (oldIndex < newIndex){
                        newIndex -= 1;
                      }
                      personList.insert(newIndex, personList.removeAt(oldIndex));
                    });
                  },
                ),
              ),
            ]
        ),

      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}
final List<Person> personList = [];

class _MyFormState extends State<MyForm> {

  Person person = Person("", 0, 0);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Insert Name';
                } else if (int.tryParse(value) != null){
                  return 'Please enter some string, not a number';
                } return null;
              },
              onSaved: (value){
                person.name = value!;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ProjectPoint',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'insert ProjectPoint';
                } else if (int.tryParse(value) == null){
                  return 'Please enter some Integar';
                } return null;
              },
              onSaved: (value){
                person.projectPoint = int.parse(value!);
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
              value: person.additionalPoint,
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
                  person.additionalPoint = value!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child:Container(
                width: 100,
                height: 60,
                color: Colors.deepPurple,
                child: Text("Enter", style: TextStyle(fontSize: 30, color: Colors.white),textAlign: TextAlign.center,),
              ),
              onTap: (){
                setState(() {
                  if(formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Student added"),
                    ));
                    formKey.currentState!.save();
                    personList.add(Person(person.name, person.projectPoint, person.additionalPoint));
                    print(person); //debugging 용도
                    print(personList); //debugging 용도
                  }
                });
              },
            )

          ],


        ),
      ),
    );
  }

}

class Person{
  String name;
  int projectPoint;
  int additionalPoint;

  Person(this.name, this.projectPoint, this.additionalPoint);

  @override
  String toString() {
    return 'Person{name: $name, projectPoint: $projectPoint, additionalPoint: $additionalPoint}';
  }
}

