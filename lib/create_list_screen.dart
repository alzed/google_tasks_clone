import 'package:flutter/material.dart';

class CreateListScreen extends StatefulWidget {
  const CreateListScreen({Key key}) : super(key: key);

  @override
  _CreateListScreenState createState() => _CreateListScreenState();
}

class _CreateListScreenState extends State<CreateListScreen> {
  final controller = TextEditingController();
  bool edit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Create new list',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        titleSpacing: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              print(controller.text);
            },
            child: Text(
              'Done',
              style: TextStyle(color: edit ? Colors.blueAccent : Colors.grey),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(width: 0.6, color: Colors.grey),
                bottom: BorderSide(width: 0.6, color: Colors.grey),
              ),
            ),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: 'Enter list title',
              ),
              onSubmitted: (task) {
                print(task);
                Navigator.of(context).pop();
              },
              onChanged: (task) {
                setState(() {
                  if (task.isNotEmpty) {
                    edit = true;
                  } else {
                    edit = false;
                  }
                });
              },
              controller: controller,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueGrey.shade50,
            ),
          )
        ],
      ),
    );
  }
}
