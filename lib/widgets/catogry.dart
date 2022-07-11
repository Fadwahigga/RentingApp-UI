import 'package:flutter/material.dart';

class Catogry extends StatefulWidget {
  const Catogry({Key? key}) : super(key: key);

  @override
  State<Catogry> createState() => _CatogryState();
}

class _CatogryState extends State<Catogry> {
  final List categry = ["Recomaonded", "For You", "Top Houses", "Near  to You"];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: ListView.builder(
          itemCount: categry.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            bool isCurrentItem = i == _currentIndex;
            return GestureDetector(
              onTap: (() {
                setState(() {
                  _currentIndex = i;
                });
              }),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Text(
                  categry[i],
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: isCurrentItem ? 20 : 16,
                      fontWeight:
                          isCurrentItem ? FontWeight.bold : FontWeight.normal),
                ),
              ),
            );
          }),
    );
  }
}
