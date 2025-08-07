import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';

class TaskText extends StatefulWidget {
  const TaskText({super.key, required this.text, required this.onDelete});

  final String text;
  final void Function() onDelete;

  @override
  State<TaskText> createState() => _TaskTextState();
}

class _TaskTextState extends State<TaskText> {
  bool taskCompleted = false;

  bool _isEditing = false;
  late TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  void _saveEdit() {
    if (_controller.text.trim().isEmpty) {
      // If the new text is empty, don't save it and keep editing disabled
      _controller.text = widget.text; // reset to original
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
              controller: _controller,
              autofocus: true,
              onSubmitted: (value) => _saveEdit(),
              onEditingComplete: _saveEdit,
              style: TextStyle(
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
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
                _controller.text,
                style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  // fontFamily: "GloriaHallelujah",
                  fontSize: 18,
                ),
              ),
            ),
      trailing: IconButton(
        onPressed: widget.onDelete,
        icon: Icon(Icons.delete, color: kIconColor),
      ),
    );
  }
}
