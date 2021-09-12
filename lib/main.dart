import 'package:flutter/material.dart';

import 'package:google_tasks_clone/screens/tasks_screen.dart';

void main() {
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  const TasksApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}
