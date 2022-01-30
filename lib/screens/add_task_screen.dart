import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager1/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    return Container(
      color: const Color(0xff757575),
      child: Container(
        height: 400,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                  ),
                  textAlign: TextAlign.center,
                  autofocus: true,
                ),
                SizedBox(
                  width: 400,
                  child: TextButton(
                    onPressed: () {
                      Provider.of<TaskData>(context, listen: false)
                          .addTask(textEditingController.text);
                      Navigator.pop(context);
                    },
                    child: const Text('Add'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
