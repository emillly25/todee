import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todowee/models/task.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  bool isDone;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {super.key,
      this.isDone = false,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPressCallback();
      },
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
