import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:milkshade/widgets/customTextField.dart';
import 'package:milkshade/constants.dart';
import 'package:milkshade/widgets/custom_raised_button.dart';

class User_Login extends StatefulWidget {
  @override
  _User_LoginState createState() => _User_LoginState();
}

class _User_LoginState extends State<User_Login> {var _registration_number;
String _error_message = 'All the fields are required to be Filled';
Color _error_message_color = Colors.deepPurple;
bool _visibility_controller = false;

String name;
String email;
String password;
bool show_spinner = false;
String destination;

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.transparent,

      body: SafeArea(
        //child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/login_background.jpg'),
              fit: BoxFit.cover,
            ),),
          // color: Colors.white60,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          //child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Expanded(
                child: Hero(
                  tag: 'login to signup',
                  child: Icon(
                    Icons.filter_hdr,
                    color: Colors.yellowAccent,
                    size: 100.0,
                  ),
                ),),

              Text('Customer LogIn',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),),
              SizedBox(height: 10.0,),

              //Name:-
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('Name: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,),),
                    TextField(
                      onChanged: (value){
                        name = value;
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Type your Name here',
                      ),
                    )
                  ],
                ),),

              // e-mail :-
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('E-Mail: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),),
                    TextField(
                      onChanged: (value){
                        email = value;
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'E-Mail',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    )
                  ],
                ),),

              // password :-
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('Password: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),),
                    TextField(
                      onChanged: (value){
                        password = value;
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
                      ),
                      obscureText: true,
                    )
                  ],
                ),),

              // Destination :-
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('Destination: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),),
                    TextField(
                      onChanged: (value){
                        destination = value;
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Destination',
                      ),
                      obscureText: true,
                    )
                  ],
                ),),

              //error message :-
              Expanded(child: Text(_error_message ,style: TextStyle(color: _error_message_color),),),

              //continue button :-
              Center(
                child: CustomRaisedButton(
                  text: 'Continue',
                  text_color: Colors.white,
                  elevation: 8.0,
                  button_color: Colors.black,
                  radius: 10.0,
                ),
              ),
            ],
          ),
        ),
      ),
  );
}
}

/*try{
  setState(() {
  _visibility_controller = true;
  show_spinner = true;
  });
   final new_user = await _auth.signInWithEmailAndPassword(email: email, password: password); // created User With Email And Password
                    if(new_user != null){
                      Navigator.pushNamed(context, '/');
                    }
                    else{
                      setState(() {
                        _error_message = 'Invalid E-Mail or Password !';
                        _error_message_color = Colors.red;
                      });
                    }
                  }
                  catch(e){
                    setState(() {
                      _error_message = 'Invalid E-Mail or Password !';
                      _error_message_color = Colors.red;
                      show_spinner = false;
                      print(e);
                    });
                  }},*/


