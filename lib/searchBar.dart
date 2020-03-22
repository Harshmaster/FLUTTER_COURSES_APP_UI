import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(
        top: 20,
        left: 12,
        right: 12,
      ),
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(0),
        width: double.infinity,
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                left: 20,

              ),
              padding: EdgeInsets.all(0),
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for courses...',
                  border: InputBorder.none,
                ),
                onChanged: (text) {},
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.all(0),
                color: Colors.blue,
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
