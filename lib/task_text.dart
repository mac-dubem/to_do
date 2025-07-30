import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';

class TaskText extends StatefulWidget {
  const TaskText({super.key, required this.text});

  final String text;

  @override
  State<TaskText> createState() => _TaskTextState();
}

class _TaskTextState extends State<TaskText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value ?? false;
          });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        activeColor: kIconColor,
      ),
      title: Text(
        widget.text,
        style: TextStyle(
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
