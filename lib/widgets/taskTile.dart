import 'package:flutter/material.dart';
import '../widgets/checkbox.dart';
import '../models/task.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  bool isDone;
  final Function checkboxCallback;

  TaskTile(
      {super.key,
      this.isDone = false,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isDone,
        onChanged: (value) {
          checkboxCallback(value);
        },
      ),
    );
  }
}
