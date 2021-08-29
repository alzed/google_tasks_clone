import 'package:flutter/material.dart';
import 'tasks_bottom_sheet.dart';
import 'create_list_screen.dart';

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
                builder: buildTaskListViewSheet,
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
                builder: buildTaskOptionsSheet,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildTaskListViewSheet(BuildContext context) {
    return TasksBottomSheet(
      child: Column(
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
      ),
    );
  }

  Widget buildTaskOptionsSheet(BuildContext context) {
    return TasksBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: Text('Sort by'),
            subtitle: Text('My order'),
            onTap: () {},
          ),
          Divider(
            thickness: 2.0,
            height: 2.0,
          ),
          ListTile(
            title: Text('Rename list'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Delete list'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Delete all completed tasks'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
