import 'package:flutter/material.dart';

import 'bottom_tasks_bar.dart';

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
      ),
    );
  }
}

    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        children: [
          ),
        ],
      ),
}
