import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kBlueColor,
      title: const Text(
        'Result',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      ),
      content: Text(text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          )),
      actions: <Widget>[
        TextButton(
          child: const Text('OK',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              )),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
