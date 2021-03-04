import 'package:flutter/material.dart';
import 'home_screen/home_page.dart';

class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
            (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Page(),),);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Expanded(
            flex: 3,
            child: Container(
              child: Center(
                child: Icon(
                  Icons.filter_hdr,
                  color: Colors.yellowAccent,
                  size: 300.0,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Center(child: CircularProgressIndicator()),
          ),
        ],
      )
    );
  }
}
