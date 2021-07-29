import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Tasks',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Icon(Icons.info_outline),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                ListTile(
                  leading: Icon(Icons.circle_outlined),
                  title: Text('Task 1'),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined),
                  title: Text('Task 2'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
