import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';

class TaskHead extends StatelessWidget {
  const TaskHead({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: "GloriaHallelujah",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Icon(Icons.add, color: kBlack, size: 25),
          ),
          // GestureDetector (child: Icon(Icons.add)),
        ],
      ),
    );
  }
}
