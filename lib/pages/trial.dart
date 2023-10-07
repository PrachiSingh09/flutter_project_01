import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
          // Your main content goes here
          ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 65,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //1st circle
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 201, 178, 77),
              radius: 15,
            ),

            //search icon
            CircleAvatar(
              backgroundColor: Color.fromARGB(206, 231, 221, 221),
              child: IconButton(
                icon: Icon(Icons.replay_rounded),
                onPressed: () {},
              ),
            ),

            //profile
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 104, 97, 97),
              child: Container(
                height: 30,
                width: 30,
                child: Image.asset('assets/images/userimg.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
