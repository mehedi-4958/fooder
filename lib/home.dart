import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //index variable for the bottom navigation bar items
    int _selectedIndex = 0;
    List<Widget> pages = <Widget>[
      //TODO: Replace with Card1
      Container(
        color: Colors.red,
      ),
      //TODO: Replace with Card2
      Container(
        color: Colors.green,
      ),
      //TODO: Replace with Card3
      Container(
        color: Colors.blue,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fooder',
          //header text style from custom theme
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      //TODO: Show selected tab
      body: pages[_selectedIndex],

      //Adding a bottom navigation bar to the Scaffold
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        //currentIndex to hightlight tab bar item
        currentIndex: _selectedIndex,
        //updates the state on tap
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
