import 'package:flutter/material.dart';
import 'profile_pic.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 7, 70, 120),
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage("images/bbb.jpg"),
                radius: 40.0,
                child: GestureDetector(
                  onTap: () async {
                    await showDialog(
                        context: context, builder: (_) => const profile_pic());
                  },
                ),
              ),
              const Text(
                'Bereket mekonen',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const Text(
                'bekimekonent@gmail.com',
                style: TextStyle(
                  color: Color.fromARGB(255, 165, 164, 164),
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: ListTile(
            title: const Text(
              'Items',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: const Icon(Icons.data_object),
            onTap: () {
              Navigator.pop(context, true);
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: ListTile(
            title: Text(
              'Setting',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.settings),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: ListTile(
            title: Text(
              'Account',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.manage_accounts),
          ),
        ),
      ]),
    );
  }
}
