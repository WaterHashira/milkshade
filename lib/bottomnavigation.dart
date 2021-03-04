import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  static const routeName = "/bottom-navigation";
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  /*List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': Home_Page(),
        'title': 'Home',
      },
      {
        'page': ChatScreen(),
        'title': 'Tips',
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Colors.white),
        ),
      ),
      // drawer: Menu_Drawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            title: Text("Chat"),
          ),
        ],
      ),
    );
  }*/

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(

      backgroundColor: Colors.blueGrey,
      currentIndex: 0, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.people_rounded),
          title: Text('profile'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on),
          title: Text('pricing'),
        )
      ],
    );
  }
}
