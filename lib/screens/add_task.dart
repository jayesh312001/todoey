import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';
import 'package:getwidget/getwidget.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  String newTask;

  AddTaskScreen({this.addTaskCallback});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, right: 50, left: 50),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: kAddTaskStyle,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTask = newText;
            },
          ),
          SizedBox(
            height: 20,
          ),
          GFButton(
            color: Colors.lightBlue[400],
            text: 'Add',
            onPressed: () {
              addTaskCallback(newTask);
            },
          ),
        ],
      ),
    );
  }
}
