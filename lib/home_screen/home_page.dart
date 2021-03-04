import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:milkshade/profile_page.dart';
import 'package:milkshade/bottomnavigation.dart';
import 'package:milkshade/widgets/custom_raised_button.dart';

import 'menu_drawer.dart';

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('MILK SHADE', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)),
      ),

      drawer: Menu_Drawer(),

      bottomNavigationBar: BottomNavigationScreen(),

      body: Container(
        child: ListView(

         children: <Widget>[
           Container(
             height: MediaQuery.of(context).size.height * 3/7,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('images/drinking_milk_photo.jpg'),
                 fit: BoxFit.cover,
               ),
               border: Border.all(color: Colors.black, width: 2.0,),
               borderRadius: BorderRadius.circular(10.0),
             ),
           ),

           Container(
             height: MediaQuery.of(context).size.height * 2/7,
             width: MediaQuery.of(context).size.width,
             padding: EdgeInsets.all(20.0,),

             child: Container(
               child: Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: FlatButton(
                        child: Text('Track Milk', style: TextStyle(color: Colors.yellow, fontSize: 30.0),),
                        color: Colors.red,
                        onPressed: null,
                      )
                    ),
               ),
             ),
           ),
         ],

        ),
      ),
    );
  }
}
