import 'package:flutter/material.dart';
import 'package:sjce_myclassroom/pages/HomePage.dart';

class MyFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.deepOrange,
      hoverColor: Colors.deepOrangeAccent,
      child: Icon(Icons.home,),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=> HomePage()));
      },
    );
  }
}
