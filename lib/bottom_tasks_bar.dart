import 'package:flutter/material.dart';
import 'tasks_bottom_sheet.dart';

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
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blueGrey.withAlpha(80)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(30.0),
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 35.0, top: 8.0, bottom: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'My Tasks',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueAccent.shade700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            thickness: 2.0,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                    color: Colors.black87,
                    size: 20.0,
                  ),
                ),
                Text(
                  'Create new list',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
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
          TaskOptionButton(
            onPressed: () {},
            child: Column(
              children: [
                Text('Sort by'),
                Text('My order'),
              ],
            ),
          ),
          Divider(
            thickness: 2.0,
            height: 2.0,
          ),
          TaskOptionButton(
            onPressed: () {},
            child: Text(
              'Rename list',
            ),
          ),
          TaskOptionButton(
            onPressed: () {},
            child: Text('Delete list'),
          ),
          TaskOptionButton(
            onPressed: () {},
            child: Text('Delete all completed tasks'),
          ),
        ],
      ),
    );
  }
}

class TaskOptionButton extends StatelessWidget {
  const TaskOptionButton({
    Key key,
    @required this.child,
    @required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 8.0,
            bottom: 8.0,
          ),
          child: child,
        ),
      ),
    );
  }
}
