import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function onChangeCallback;

  TaskCheckBox(this.isChecked, this.onChangeCallback);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (value) {
        onChangeCallback(value);
      },
    );
  }
}
