import 'package:flutter/material.dart';
import './topBar.dart';
import './searchBar.dart';
import './card.dart';
import './tags.dart';
import './card2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopBar(),
            Container(
              width: double.infinity,
              child: Text(
                'What would you like to learn today?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.only(top: 35),
            ),
            Container(
              height: 7,
            ),
            SearchBar(),
            Container(
              margin: EdgeInsets.only(
                top: 35,
                left: 15,
                bottom: 10,
              ),
              child: Text(
                'Recent courses',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              height: 268,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MyCard(),
                  MyCard(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CusTag(tag: 'UI'),
                  CusTag(tag: 'UX'),
                  CusTag(tag: 'Biology'),
                  CusTag(tag: 'Psychology'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 15,
                bottom: 10,
              ),
              child: Text(
                'Popular courses',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
            ),
                      Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              height: 268,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MyCard2(),
                  MyCard2(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
