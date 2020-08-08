import 'package:flutter/material.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/screens/add_task.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(40, 80, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 80,
                ),
                SizedBox(height: 25),
                Text('Todoey', style: kTaskScreenTextStyle),
                Text('69 Tasks',
                    style: kTaskScreenTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.normal)),
                SizedBox(height: 40),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: kDecoration,
              padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
              child: TasksList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue[400],
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddTaskScreen();
            },
          );
        },
      ),
    );
  }
}
