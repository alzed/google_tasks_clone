import 'package:flutter/material.dart';

import 'package:google_tasks_clone/widgets/bottom_tasks_bar.dart';
import 'package:google_tasks_clone/widgets/add_task_button.dart';
import 'package:google_tasks_clone/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomTasksBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddTaskButton(),
      body: TasksList(),
    );
  }
}
