import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key key}) : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: 'New Task',
            ),
            onSubmitted: (task) {
              print(task);
              Navigator.of(context).pop();
            },
            controller: controller,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.segment,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.calendar_today),
              ),
              Expanded(
                child: SizedBox(),
              ),
              TextButton(
                onPressed: () {
                  print(controller.text);
                  Navigator.of(context).pop();
                },
                child: Text('Save'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
