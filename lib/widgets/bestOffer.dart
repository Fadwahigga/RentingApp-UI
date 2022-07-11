// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class bestOffer extends StatelessWidget {
  const bestOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Best Offer",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "See All",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(image: AssetImage("images/h1.jpg")),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("MoonLight House",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Best Offer",
                        style: TextStyle(
                          fontSize: 14,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
