import 'package:flutter/material.dart';

class CusTag extends StatelessWidget {
  final String tag;
  CusTag({this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue[100],
      ),
      child: Text(
        tag,
        style: TextStyle(
          color: Colors.blue[800],
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
