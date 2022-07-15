import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Todo(),
    );
  }
}

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  var ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          child: Column(
            children: [todoItem('farouk')],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              showDialog(context: context, builder: (context) => AddItem());
            });
          },
          child: Icon(Icons.add)),
    );
  }

  Row todoItem(itemtext) {
    return Row(
      children: [
        Checkbox(
            value: ischecked,
            onChanged: (value) {
              setState(() {
                ischecked = value!;
              });
            }),
        Text(
          itemtext,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Form(
            child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Title of todo Item', border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {}, child: Text('Add')),
            ),
          ],
        ))
      ],
    );
  }
}
