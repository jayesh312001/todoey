import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy halwa', isDone: false),
    Task(name: 'Buy ghee', isDone: false),
    Task(name: 'Buy mithai', isDone: false),
  ];

  int get taskCount {
    return tasks.length;
  }
}
