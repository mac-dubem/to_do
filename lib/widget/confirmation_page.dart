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
      return Dialog(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: LightBackgroundImage,
          ),
          height: 200,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              spacing: 20,
              children: [
                Text("Delete Task", style: kHeadStyle),

                Text("Are you sure you want to delete \"$task\" ?"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                ),
              ],
            ),
          ),
        ),
      );
      // AlertDialog(

      //   title: Text("Delete Task", style: kHeadStyle),
      //   content: Text("Are you sure you want to delete \"$task\" ?"),
      //   actions: [
      //     TextButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       child: Text("Cancel"),
      //     ),
      //     TextButton(
      //       onPressed: () {
      //         onTap();
      //         Navigator.pop(context);
      //       },
      //       child: Text("Delete"),
      //     ),
      //   ],
      // );
    },
  );
}
