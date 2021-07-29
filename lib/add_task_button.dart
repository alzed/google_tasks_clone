import 'package:flutter/material.dart';

import 'tasks_bottom_sheet.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({
    Key key,
  }) : super(key: key);

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
}

Widget buildAddTaskSheet(BuildContext context) {
  return TasksBottomSheet(
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              child: Text(
                'Save',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
