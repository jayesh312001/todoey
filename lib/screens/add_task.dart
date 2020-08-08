import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';

class AddTaskScreen extends StatelessWidget {
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
          TextField(),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: null,
            child: Container(
              // color: Colors.lightBlue,

              height: 40,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.lightBlue[300],
              ),
              child: Center(
                child: Text(
                  'ADD',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
