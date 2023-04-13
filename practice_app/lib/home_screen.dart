import 'package:flutter/material.dart';
import 'package:practice_app/screen_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Navigation Drawer'),
            backgroundColor: Colors.teal,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children:  [
               const  UserAccountsDrawerHeader(
                    accountName: Text('Sujan Pandey'),
                    accountEmail: Text('sujanpandey747@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/896059/pexels-photo-896059.jpeg' ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.teal,)),

                  ListTile(
                       leading: const Icon(Icons.home),
                       title: const Text('Home'),
                       onTap: () {},
                  ),
                   ListTile(
                       leading: const Icon(Icons.add_alarm_sharp),
                       title: const Text('Alarm'),
                       onTap: () {},
                  ),
                  ListTile(
                       leading: const Icon(Icons.logout_outlined),
                       title: const Text('Logout'),
                       onTap: () {},
                  ),
              ],
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreenTwo()));
                    },
                    child: const Text('Screen 1')),
              )
            ],
          )),
    );
  }
}
