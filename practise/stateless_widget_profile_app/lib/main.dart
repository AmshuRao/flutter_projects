// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:home(),
  ));
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title:Text("Profile app",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
         Center(child:CircleAvatar(
          backgroundImage: AssetImage('assets/profile.png'),
          radius: 80.0,
         ) ),
         Divider(
          height: 60.0,
          color: Colors.grey[850],
          ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Amshu G M',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Typing speed',
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '200',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Current CGPA',
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '9.22',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'amshu.cs21@bmsce.ac.in',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.grey[400],
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

