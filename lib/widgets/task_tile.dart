import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallBack,
    required this.longPress,
  }) : super(key: key);
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final VoidCallback longPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) {
          checkBoxCallBack(value);
        },
      ),
      onLongPress: longPress,
    );
  }
}
