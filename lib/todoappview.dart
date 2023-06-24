import 'package:flutter/material.dart';

class ToDoAppView extends StatefulWidget {
  const ToDoAppView({super.key});

  @override
  State<ToDoAppView> createState() => _ToDoAppViewState();
}

class _ToDoAppViewState extends State<ToDoAppView> {
  List<String> toDoList = [];

  @override
  Widget build(BuildContext context) {
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
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 80,
                    child: TextFormField(),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    flex: 20,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add'),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: toDoList.length, itemBuilder: (context, index) {
                    return Card();
              }),
            )
          ],
        ),
      ),
    );
  }
}
