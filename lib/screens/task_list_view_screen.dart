import 'package:flutter/material.dart';

import 'package:google_tasks_clone/screens/create_list_screen.dart';

class TaskListViewScreen extends StatelessWidget {
  const TaskListViewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
            color: Colors.blueAccent.withAlpha(50),
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(30.0),
            ),
          ),
          child: ListTile(
            title: Text(
              'My Tasks',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blueAccent.shade700,
              ),
            ),
            contentPadding: const EdgeInsets.only(left: 55.0),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text('Create new list'),
          horizontalTitleGap: 1.0,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateListScreen()),
            );
          },
        ),
      ],
    );
  }
}
