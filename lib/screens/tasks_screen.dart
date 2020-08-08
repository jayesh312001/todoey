import 'package:flutter/material.dart';
import 'package:todoey/components/fab.dart';
import 'package:todoey/constants/constants.dart';

class TasksScreen extends StatelessWidget {
  // List<String> tasks = ['halwa', 'jai shri ram'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('data'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: MyFloatingActionButton(),
    );
  }
}
