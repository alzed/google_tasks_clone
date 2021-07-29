import 'package:flutter/material.dart';

import 'bottom_tasks_bar.dart';
import 'add_task_button.dart';

void main() {
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  const TasksApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomTasksBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: AddTaskButton(),
      ),
    );
  }
}


