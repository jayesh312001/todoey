import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/models/task_data.dart';
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
                Text('${Provider.of<TaskData>(context).taskCount} Tasks',
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
            isScrollControlled: true,
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen(
                    addTaskCallback: (newTask) {
                      // setState(() {
                      //   tasks.add(Task(name: newTask));
                      //   Navigator.pop(context);
                      // });
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// class MyFloatingActionButton extends StatefulWidget {
//   @override
//   _MyFloatingActionButtonState createState() => _MyFloatingActionButtonState();
// }

// class _MyFloatingActionButtonState extends State<MyFloatingActionButton> {
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       child: Icon(Icons.add),
//       backgroundColor: Colors.lightBlue[400],
//       onPressed: () {
//         showModalBottomSheet(
//           context: context,
//           isScrollControlled: true,
//           builder: (context) => SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.only(
//                   bottom: MediaQuery.of(context).viewInsets.bottom),
//               child: AddTaskScreen(addTaskCallback: (newTask) {
//                 setState(() {
//                   tasks.add(Task(name: newTask));
//                   Navigator.pop(context);
//                 });
//               }),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
