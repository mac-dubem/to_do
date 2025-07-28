import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                          ListTile(
                            title: Text(
                              "Doctor appointment",
                              style: TextStyle(
                                fontFamily: "GloriaHallelujah",
                                fontSize: 25,
                              ),
                            ),
                            // leading: Checkbox(value: true, onChanged: ),
                          ),
                        ],
                      ),
                    ),
                    FloatingActionButton(onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
