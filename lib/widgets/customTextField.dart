import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:milkshade/constants.dart';

class customTextField extends StatelessWidget {
  String hintText;
  customTextField(this.hintText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, paddedTextField, 20.0, paddedTextField),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  3.0, // Move to bottom 10 Vertically
                ),
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(roundedTextField))
        ),
        child: TextField(
          onChanged: (value) {
            //TODO: OnPressed as argument
          },
          autocorrect: false,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(roundedTextField)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(roundedTextField)),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
