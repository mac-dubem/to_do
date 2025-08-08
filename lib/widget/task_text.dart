import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';

class TaskText extends StatefulWidget {
  const TaskText({
    super.key,
    required this.text,
    required this.onDelete,
    required this.onEdit,
  });

  final String text;
  final void Function() onDelete;
  final void Function(String newText) onEdit;

  @override
  State<TaskText> createState() => _TaskTextState();
}

class _TaskTextState extends State<TaskText> {
  bool taskCompleted = false;

  bool _isEditing = false;
  late TextEditingController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void _saveEdit() {
    if (controller.text.trim().isEmpty) {
      // If the new text is empty, don't save it and keep editing disabled
      controller.text = widget.text; // reset to original
    } else {
      widget.onEdit(controller.text); // Send new text back to parent
    }
    setState(() {
      _isEditing = false;
    });
  }

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
      title: _isEditing
          ? TextField(
              controller: controller,
              autofocus: true,
              onSubmitted: (value) => _saveEdit(),
              onEditingComplete: _saveEdit,
              style: TextStyle(
                // decoration: taskCompleted
                //     ? TextDecoration.lineThrough
                //     : TextDecoration.none,
                // fontFamily: "GloriaHallelujah",
                fontSize: 18,
              ),
            )
          : GestureDetector(
              onTap: () {
                setState(() {
                  _isEditing = true;
                });
              },
              child: Text(
                controller.text,
                style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  // fontFamily: "GloriaHallelujah",
                  fontSize: 18,
                ),
              ),
            ),
      trailing: taskCompleted
          ? IconButton(
              onPressed: widget.onDelete,
              icon: Icon(Icons.delete, color: kIconColor),
            )
          : null,
    );
  }
}
