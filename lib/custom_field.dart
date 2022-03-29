import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField({

    Key? key,
    required this.title,
    required this.Icon1,

  })       : super(key: key);
  final String title;
  var Icon1;


  @override
  Widget build(BuildContext context) {
    return TextField(

      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),

          borderSide: BorderSide(color: Colors.purpleAccent,width: 2.0),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: title,
        prefixIcon: Icon1,





      ),
    );
  }
}

