import 'package:flutter/material.dart';


class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
        backgroundColor: Colors.teal,
      ),
         body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Expanded(
            child: ListView.builder(itemCount: 30, itemBuilder: (context, index) {
          
               return const ListTile(
                leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/896059/pexels-photo-896059.jpeg' ),
                        ),
                title: Text("Sujan Pandey"),
               );
             
               
             },
             
               ),
          ),
   ] ));
  }
}