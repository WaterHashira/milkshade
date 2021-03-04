import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Menu_Drawer extends StatelessWidget {

  final space = 20.0;
  final button_size = 57.0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.yellow,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('images/drinking_milk_photo.jpg'))),
              ),
            ),

            SizedBox(height: 40.0,),

            SizedBox(
              height: button_size,
              child: RaisedButton(
                color: Colors.blue,
                child: Text('Settings', style: TextStyle(fontSize: 20.0,),),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(height: space,),

            SizedBox(
              height: button_size,
              child: RaisedButton(
                color: Colors.blue,
                child: Text('Profile', style: TextStyle(fontSize: 20.0,),),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(height: space,),

          ],
        ),
      ),
    );
  }
}
