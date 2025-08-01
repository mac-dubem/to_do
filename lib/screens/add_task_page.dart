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
          Text(
            textAlign: TextAlign.center,
            "Add New Task",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              // fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: (newText) => newAddText = newText,
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
            child: TextButton(
              onPressed: () {
                addTaskCallback(newAddText);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(kBlack),
              ),
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "GloriaHallelujah",
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



