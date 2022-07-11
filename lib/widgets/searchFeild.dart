// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class searchFeild extends StatelessWidget {
  const searchFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.grey,
            ),
            hintText: "Search for a house...",
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
