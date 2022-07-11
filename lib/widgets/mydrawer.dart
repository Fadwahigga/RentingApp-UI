// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: const CircleAvatar(
            backgroundImage: AssetImage("images/profile.png"),
          ),
          accountName: const Text("Fadwa Ali",
              style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: const Text(
            "Fadwa.ali20@gmail.com",
          ),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushNamed("home");
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.favorite,
          ),
          title: const Text(
            "Favorite",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
          ),
          title: const Text(
            "Setting",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
          ),
          title: const Text(
            "About",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {},
        ),
        const Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: const Icon(
            Icons.share,
          ),
          title: const Text(
            "Share",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {},
        )
      ]),
    );
  }
}
