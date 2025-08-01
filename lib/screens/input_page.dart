import 'package:flutter/material.dart';
import 'package:todoo_app/constants.dart';
import '../task_heading.dart';
import '../task_text.dart';
import 'add_task_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<String> todayList = [
    "Buy flowers for Sarah",
    "weekly Schedule for Jason",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To-do-list",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: "GloriaHallelujah",
                      ),
                    ),
                    Icon(Icons.menu, color: Colors.white, size: 40),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("images/2back.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),

                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          TaskHead(
                            title: "TODAY",
                            onPress: () {
                              BottomSheet(context);
                            },
                          ),

                          TaskText(text: todayList[0], onDelete: () {}),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: Divider(color: Colors.black),
                          ),
                          SizedBox(height: 10),

                          TaskHead(
                            title: "TOMORROW",
                            onPress: () {
                              BottomSheet(context);
                            },
                          ),
                          TaskText(text: todayList[1], onDelete: () {}),

                          // TaskText(text: "Call James"),
                          // TaskText(text: "Refund payment"),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: Divider(color: kIconColor),
                          ),
                          SizedBox(height: 10),

                          TaskHead(
                            title: "UPCOMING",
                            onPress: () {
                              BottomSheet(context);
                            },
                          ),
                          TaskText(text: todayList[1], onDelete: () {}),
                          // TaskText(text: "Follow up on Steph"),
                          // TaskText(text: "Make the research "),
                          // TaskText(text: "Call Dan"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> BottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      builder: (BuildContext context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),

          child: AddTaskPage(),
        ),
      ),
    );
  }
}
