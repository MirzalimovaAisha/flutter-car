import 'package:flutter/material.dart';
import 'package:practice3/control.dart';
import 'package:practice3/status.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/boss.png'),

              ),
                accountName: const Text('name'),
                accountEmail: const Text('email'),
              onDetailsPressed: (){},
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/boss.png'),
                )
              ],
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Messages'),
              onTap: () {},
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Control()));
        },
        child: const Text('control'),
      ),
      body: Column(
        children: [
          Text('skfskf'),
        ],
      ),
    );
  }
}
