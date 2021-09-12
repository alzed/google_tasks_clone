import 'package:flutter/material.dart';

import 'tasks_bottom_sheet.dart';
import 'package:google_tasks_clone/screens/add_task_screen.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => TasksBottomSheet(child: AddTaskScreen()),
        );
      },
    );
  }
}
