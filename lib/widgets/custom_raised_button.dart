import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {

  double elevation;
  String text;
  Color button_color;
  Color text_color;
  double text_size;
  var onPressed;
  double radius;

  CustomRaisedButton({this.elevation , this.text ,this.button_color , this.text_color , this.text_size ,this.onPressed , this.radius});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text, style: TextStyle(color: text_color, fontSize: text_size),),
      color: button_color,
      elevation: elevation,
      onPressed: onPressed,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}