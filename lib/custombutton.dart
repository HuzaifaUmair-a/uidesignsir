import 'package:flutter/material.dart';
class Button1 extends StatelessWidget {
  Button1({
    Key? key,
    required this.tittle,
    required this.clicked,

  }) : super(key: key);
  String tittle;
  VoidCallback clicked;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:clicked,
      child: Container(
        height: 60,
        width: 280,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,

              colors: [
                Colors.purpleAccent,
                Colors.purple,
                Colors.deepPurple,
              ],
            ),
            // color: Colors.purple,
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurpleAccent.withOpacity(0.2),
                //color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(10, 10),
              )
            ],
            borderRadius: BorderRadius.circular(15)),

        child: Center(
          child: Text(
            tittle,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        // color: Colors.purple,),
      ),
    );
  }
}
//customfeild

