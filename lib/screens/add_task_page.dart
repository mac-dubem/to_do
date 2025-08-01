import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          TextField(textAlign: TextAlign.center),
          // TextButton(
            
          //   onPressed: () {},
          //   child: Container(
          //     color: Colors.black,
          //     child: Text("ADD")),
          // ),
        ],
      ),
    );
  }
}
