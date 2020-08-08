import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String taskName;
  TaskTile({this.taskName});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.trailing,
      title: Text(
        widget.taskName,
        style: TextStyle(color: Colors.black87, fontSize: 20),
      ),
      value: _checked,
      onChanged: (bool value) {
        setState(
          () {
            _checked = value;
          },
        );
      },
    );
  }
}
