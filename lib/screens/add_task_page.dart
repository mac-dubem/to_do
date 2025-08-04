import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key, required this.addTaskCallback});

  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String newAddText = "";
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(textAlign: TextAlign.center, "Add New Task", style: kHeadStyle),
          TextField(
            onChanged: (newText) => newAddText = newText,
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
            child: TextButton(
              onPressed: () {
                addTaskCallback( );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(kBlack),
              ),
              child: Text("Add", style: kButtonStyle),
            ),
          ),
        ],
      ),
    );
  }
}
