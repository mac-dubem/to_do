import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoo_app/constants.dart';
import '../widget/task_heading.dart';
import '../widget/task_text.dart';
import 'add_task_page.dart';
import '../widget/confirmation_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<String> todayList = [
    "Buy flowers for Sarah",
    "weekly Schedule for Jason",
    "Call James",
  ];

  List<String> tomorrrowList = [
    // "Buy flowers for Sarah",
    // "weekly Schedule for Jason",
    // "Refund payment",
  ];

  List<String> upcomeList = [
    // "Call Dan",
    // "Make the research ",
    // "Follow up on Steph",
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DarkBackgroundImage),
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
                  image: LightBackgroundImage,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),

                // ============== TASK SECTIONS ======================
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          TaskHead(
                            title: "TODAY",
                            onPress: () {
                              BottomSheet(context, todayList);
                            },
                          ),
                          for (var task in todayList)
                            TaskText(
                              text: task,
                              onDelete: () {
                                confirmationPage(
                                  context: context,
                                  task: task,
                                  onTap: () {
                                    setState(() {
                                      todayList.remove(task);
                                    });
                                  },
                                );
                              },
                              onEdit: (newText) {
                                setState(() {
                                  final index = todayList.indexOf(task);
                                  if (index != -1) {
                                    todayList[index] = newText;
                                  }
                                });
                              },
                            ),

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
                              BottomSheet(context, tomorrrowList);
                            },
                          ),
                          for (var task in tomorrrowList)
                            TaskText(
                              text: task,
                              onDelete: () {
                                confirmationPage(
                                  context: context,
                                  task: task,
                                  onTap: () {
                                    setState(() {
                                      tomorrrowList.remove(task);
                                    });
                                  },
                                );
                              },
                              onEdit: (newText) {
                                setState(() {
                                  final index = tomorrrowList.indexOf(task);
                                  if (index != -1) {
                                    tomorrrowList[index] = newText;
                                  }
                                });
                              },
                            ),
                          //  for (int i = 0; i < tomorrowList.length)

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
                              BottomSheet(context, upcomeList);
                            },
                          ),
                          for (var task in upcomeList)
                            TaskText(
                              text: task,
                              onDelete: () {
                                confirmationPage(
                                  context: context,
                                  task: task,
                                  onTap: () {
                                    setState(() {
                                      upcomeList.remove(task);
                                    });
                                  },
                                );
                              },
                              onEdit: (newText) {
                                // setState(() {
                                //   upcomeList.indexOf(task);
                                //   // todayList[1] = newText;
                                // });
                                setState(() {
                                  final index = upcomeList.indexOf(task);
                                  if (index != -1) {
                                    upcomeList[index] = newText;
                                  }
                                });
                              },
                            ),

                          // TaskText(text: upcomeList[1], onDelete: () {}),
                          // TaskText(text: upcomeList[2], onDelete: () {}),
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

  Future<dynamic> BottomSheet(BuildContext context, List<String> targetList) {
    return showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      builder: (BuildContext context) => SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: LightBackgroundImage,
          ),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),

          child: AddTaskPage(
            addTaskCallback: (newAddText) {
              if (newAddText.trim().isNotEmpty) {
                setState(() {
                  targetList.add(newAddText);
                  print(newAddText);
                  Navigator.pop(context);
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
