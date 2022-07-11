import 'package:flutter/material.dart';
import 'package:renting_app/widgets/bestOffer.dart';
import 'package:renting_app/widgets/catogry.dart';
import 'package:renting_app/widgets/mydrawer.dart';
import 'package:renting_app/widgets/recoHousese.dart';
import 'package:renting_app/widgets/searchFeild.dart';
import 'package:renting_app/widgets/textWlc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.clear_all,
              color: Colors.black,
            )),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage("images/profile.png"),
            radius: 25,
          )
        ],
      ),
      drawer: const myDrawer(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const textWlc(),
            const searchFeild(),
            const SizedBox(
              height: 30,
            ),
            const Catogry(),
            recoHouses(),
            const SizedBox(
              height: 30,
            ),
            const bestOffer(),
          ],
        ),
      ),
    );
  }
}
