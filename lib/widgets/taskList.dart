import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/taskTile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  const TaskList(this.tasks, {super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, idx) {
        //context는 현재 taskList의 context
        //idx는 랜더링 하는 순서를 말함 -> 배열의 idx 아님
        return TaskTile(
            taskTitle: widget.tasks[idx].name,
            isDone: widget.tasks[idx].isDone,
            checkboxCallback: (bool value) {
              setState(() {
                widget.tasks[idx].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length, //설정 하는 것이 중요!
    );
  }
}

//직접 ListView 를 구성할 수 도 있음!
// ListView(children: [
// TaskTile(taskTitle: 'task1'),
// TaskTile(taskTitle: 'task2'),
// TaskTile(taskTitle: 'task3'),
// ]);
