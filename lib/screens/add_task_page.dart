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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              textAlign: TextAlign.center,
              "Add New Task",
              style: kHeadStyle,
            ),
          ),
          TextField(
            onChanged: (newText) => newAddText = newText,
            cursorColor: Colors.black,
          
            // style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DarkBackgroundImage,
            ),
            child: TextButton(
              onPressed: () {
                addTaskCallback(newAddText);
              },
              // style: ButtonStyle(

              //   backgroundColor: WidgetStatePropertyAll(Colors.white),
              // ),
              child: Text("Add", style: kButtonStyle),
            ),
          ),
        ],
      ),
    );
  }
}
