import 'package:flutter/material.dart';
import '/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "add a new task",
            ),
          ),
          //buttons-> save+cancel
          Row(
            children: [
              //save button
              MyButton(text: "save", onPressed: onSave),
              const SizedBox(width: 8),

              MyButton(text: "Cancel", onPressed: onCancel)
              //cancel button
            ],
          )
        ]),
      ),
    );
  }
}
