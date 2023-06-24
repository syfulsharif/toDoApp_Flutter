import 'package:flutter/material.dart';
import 'package:todoapp/style.dart';

class ToDoAppView extends StatefulWidget {
  const ToDoAppView({super.key});

  @override
  State<ToDoAppView> createState() => _ToDoAppViewState();
}

class _ToDoAppViewState extends State<ToDoAppView> {
  List<String> toDoList = [];

  removeItem(index) {
    toDoList.remove(toDoList[index]);
  }
  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    String todoItem = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 80,
                    child: TextFormField(
                      onChanged: (value) {
                        todoItem = value;
                      },
                      controller: fieldText,
                      decoration:
                          appInputDecoration('Enter a Task to Complete'),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    flex: 20,
                    child: ElevatedButton(
                      style: appButtonStyle(),
                      onPressed: () {
                        setState(() {
                          toDoList.add(todoItem);
                          clearText();
                        });
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: toDoList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: sizedBox50(Row(
                        children: [
                          Expanded(
                            flex: 85,
                            child: Text(toDoList[index]),
                          ),
                          Expanded(
                            flex: 15,
                            child: IconButton(onPressed: (){
                              setState(() {
                                removeItem(index);
                              });
                            }, icon: const Icon(Icons.delete, color: Colors.green,)),
                          )
                        ],
                      )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
