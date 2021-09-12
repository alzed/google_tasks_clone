import 'package:flutter/material.dart';

class TaskOptionsScreen extends StatelessWidget {
  const TaskOptionsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
