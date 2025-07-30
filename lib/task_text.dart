import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';

class TaskText extends StatefulWidget {
  const TaskText({
    super.key,
    required this.text,
    // required this.taskCompleted,
    // required this.onChanged,
  });

  final String text;

  // final bool taskCompleted;
  // final bool onChanged;

  @override
  State<TaskText> createState() => _TaskTextState();
}

class _TaskTextState extends State<TaskText> {
  bool taskCompleted = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: taskCompleted,
        onChanged: (bool? value) {
          setState(() {
            taskCompleted = value ?? false;
          });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        activeColor: kIconColor,
      ),
      title: Text(
        widget.text,

        style: TextStyle(
          decoration: taskCompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none,
          // fontFamily: "GloriaHallelujah",
          fontSize: 20,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.delete, color: kIconColor),
      ),
    );
  }
}
