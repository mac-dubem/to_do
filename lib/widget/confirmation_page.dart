import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';

Future<dynamic> confirmationPage({
  required BuildContext context,
  required String task,
  required VoidCallback onTap,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Delete Task", style: kHeadStyle),
        content: Text("Are you sure you want to delete \"$task\" ?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              onTap();
              Navigator.pop(context);
            },
            child: Text("Delete"),
          ),
        ],
      );
    },
  );
}
