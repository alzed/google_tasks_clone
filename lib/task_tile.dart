import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  Icon unchecked = Icon(Icons.circle_outlined);
  Icon checked = Icon(Icons.check);

  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: isCompleted ? checked : unchecked,
        onPressed: () {
          setState(() {
            isCompleted = !isCompleted;
          });
        },
      ),
      title: Text(
        widget.text,
        style: TextStyle(
          decoration: isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      onTap: () {},
    );
  }
}
