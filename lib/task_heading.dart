import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';
import 'screens/add_task_page.dart';

class TaskHead extends StatelessWidget {
  const TaskHead({super.key, required this.title, required this.onPress});

  final String title;
  final void Function()  onPress;

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
            onPressed:onPress,
            child: Icon(Icons.add, color: kBlack, size: 25),
          ),
        
        ],
      ),
    );
  }
}


//  () {
//               showModalBottomSheet(
//                 context: context,
//                 // isScrollControlled: true,
//                 builder: (BuildContext context) => SingleChildScrollView(
//                   child: Container(
//                     padding: EdgeInsets.only(
//                       bottom: MediaQuery.of(context).viewInsets.bottom,
//                     ),

//                     child: AddTaskPage(),
//                   ),
//                 ),
//               );
//             },