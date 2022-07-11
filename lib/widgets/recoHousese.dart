// ignore_for_file: file_names, must_be_immutable, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:renting_app/widgets/houses.dart';

class recoHouses extends StatelessWidget {
  recoHouses({Key? key}) : super(key: key);
  List houses = [
    House(name: "Moon Light", imageUrl: "images/h1.jpg"),
    House(name: "Moon Light", imageUrl: "images/h2.jpeg"),
    House(name: "Moon Light", imageUrl: "images/h3.jpg"),
    House(name: "Moon Light", imageUrl: "images/h4.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          itemCount: houses.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Container(
              height: 200,
              width: 200,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(children: [
                Image(
                  height: double.infinity,
                  width: double.infinity,
                  image: AssetImage(houses[i].imageUrl),
                  fit: BoxFit.fill,
                ),
                Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.local_offer,
                        size: 20,
                        color: Colors.white,
                      ),
                    )),
                Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      color: Colors.white.withOpacity(.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            houses[i].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ))
              ]),
            );
          }),
    );
  }
}
