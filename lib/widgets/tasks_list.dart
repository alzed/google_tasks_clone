import 'package:flutter/material.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key key}) : super(key: key);

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
                TaskTile(
                  text: 'Task 1',
                ),
                TaskTile(
                  text: 'Task 2',
                ),
                // Material(
                //   elevation: 0.0,
                //   child: ExpansionPanelList(
                //     children: [
                //       ExpansionPanel(
                //         isExpanded: true,
                //         headerBuilder: (context, isOpen) {
                //           return Text('Completed');
                //         },
                //         body: Column(
                //           children: [
                //             ListTile(
                //               leading: Icon(Icons.check),
                //               title: Text('Task 0'),
                //             )
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
