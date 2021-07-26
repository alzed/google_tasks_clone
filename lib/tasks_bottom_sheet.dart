import 'package:flutter/material.dart';

class TasksBottomSheet extends StatelessWidget {
  const TasksBottomSheet({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey.shade600,
        child: Container(
          padding: EdgeInsets.only(
            top: 16.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4.0),
              topLeft: Radius.circular(4.0),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
