import 'package:flutter/material.dart';

import 'tasks_bottom_sheet.dart';
import 'package:google_tasks_clone/screens/task_list_view_screen.dart';
import 'package:google_tasks_clone/screens/task_options_screen.dart';

class BottomTasksBar extends StatelessWidget {
  const BottomTasksBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            splashRadius: 20.0,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) =>
                    TasksBottomSheet(child: TaskListViewScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            splashRadius: 20.0,
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) =>
                    TasksBottomSheet(child: TaskOptionsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
