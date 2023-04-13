import 'package:flutter/material.dart';
import 'package:todowee/widgets/taskTile.dart';
import 'package:todowee/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, whatever, child) {
        return ListView.builder(
          itemBuilder: (context, idx) {
            //idx는 랜더링 하는 순서를 말함 -> 배열의 idx 아님
            //그래서 몇개를 랜더링 시킬지 itemCount 설정이 반드시 필요!
            final task = whatever.tasks[idx];
            return TaskTile(
              taskTitle: task.name,
              isDone: task.isDone,
              checkboxCallback: (bool value) {
                whatever.updateTask(task);
              },
              longPressCallback: () {
                whatever.deleteTask(task);
              },
            );
          },
          itemCount: whatever.taskCount,
        );
      },
    );
  }
}

//직접 ListView 를 구성할 수 도 있음!
// ListView(children: [
// TaskTile(taskTitle: 'task1'),
// TaskTile(taskTitle: 'task2'),
// TaskTile(taskTitle: 'task3'),
// ]);
