import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Good Morning',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                height: 2,
              ),
              Text(
                'John!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 33,
                ),
              ),
            ],
          ),
          Text(
            '      :',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 37,
              color: Colors.black54,
            ),
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/photo.jpg',
              ),
            ),
            margin: EdgeInsets.only(
              right: 20,
              top: 10,
            ),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12))),
          )
        ],
      ),
    );
  }
}
