import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(taskName: 'task 1'),
      ],
      addAutomaticKeepAlives: false,
    );
  }
}
