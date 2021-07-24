import 'package:flutter/material.dart';

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
                builder: buildTaskListViewSheet,
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            splashRadius: 20.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildTaskListViewSheet(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Task List 1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Task List 2'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Task List 3'),
          ),
          Divider(
            thickness: 2.0,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.add),
                Text('Create new list'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
