import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //TODO: Add state variables and functions

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooder',
          //header text style from custom theme
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      //TODO: Show selected tab
      body: Center(
        child: Text(
          'Let\'s get cooking',
          // Text style from fooder theme
          style: Theme.of(context).textTheme.headline1,
        ),
      ),

      //Adding a bottom navigation bar to the Scaffold
      bottomNavigationBar: BottomNavigationBar(
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
