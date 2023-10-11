import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  List<String> tasks = [];

  TextEditingController save=TextEditingController();

  void addTask(String task) {
    setState(() {
      tasks.add(task);
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('To-Do App')),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed:(){
          showDialog(
              context: context,
              builder: (BuildContext context){
            return AlertDialog(
              title: TextField(
                controller: save,
                decoration: InputDecoration(labelText: 'Add a task'),
              ),
              actions: [
                Center(
                  child: ElevatedButton(

                    onPressed: (){
                      addTask(save.text);
                      save.clear();
                      Navigator.of(context).pop();
                      },

                    child: Text("Save"),
                  ),
                ),
              ],
            );
          });
        },
        child: Icon(Icons.add,color: Colors.black,),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      deleteTask(index);
                    },
                  ),
                );
              },
            ),

          ),

        ],
      ),

    );
  }


}