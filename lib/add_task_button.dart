import 'package:flutter/material.dart';

import 'tasks_bottom_sheet.dart';

class AddTaskButton extends StatefulWidget {
  const AddTaskButton({
    Key key,
  }) : super(key: key);

  @override
  _AddTaskButtonState createState() => _AddTaskButtonState();
}

class _AddTaskButtonState extends State<AddTaskButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: buildAddTaskSheet,
        );
      },
    );
  }

  Widget buildAddTaskSheet(BuildContext context) {
    final controller = TextEditingController();

    return TasksBottomSheet(
      child: Padding(
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
      ),
    );
  }
}
