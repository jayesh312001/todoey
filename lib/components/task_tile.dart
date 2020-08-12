import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkboxCallback;
  TaskTile({this.taskName, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          taskName,
          style: isChecked
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class TaskTile extends StatefulWidget {
//   final String taskName;

//   TaskTile({this.taskName});

//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;

//   void checkBoxCallBack(bool checkBoxState) {
//     setState(() {
//       isChecked = checkBoxState;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text(
//           widget.taskName,
//           style: isChecked
//               ? TextStyle(decoration: TextDecoration.lineThrough)
//               : null,
//         ),
//         trailing: TaskCheckBox(
//           checkBoxState: isChecked,
//           changeCheckBox: checkBoxCallBack,
//         ),
//       ),
//     );
//   }
// }

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function changeCheckBox;

//   TaskCheckBox({this.checkBoxState, this.changeCheckBox});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxState,
//       onChanged: changeCheckBox,
//     );
//   }
// }
