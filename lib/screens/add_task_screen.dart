import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key, required this.titleCallback})
      : super(key: key);
  final Function titleCallback;

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
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
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                ),
                SizedBox(
                  width: 400,
                  child: TextButton(
                    onPressed: () {
                      titleCallback(textEditingController.text);
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
