import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all( 8.0 ),
            child: CircleAvatar(
              backgroundImage: NetworkImage( 'https://i.pinimg.com/originals/81/ef/04/81ef0466f950a46dea53aa7d1ec26705.jpg' ),
              radius: 20.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
    );
  }
}