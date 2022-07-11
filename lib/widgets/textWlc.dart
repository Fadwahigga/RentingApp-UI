// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class textWlc extends StatelessWidget {
  const textWlc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Hi, Fadwa",
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 8,
        ),
        Text("Find A Beautifull House",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
