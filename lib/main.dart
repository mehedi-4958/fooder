import 'package:flutter/material.dart';

void main() {
  runApp(const Fooder());
}

class Fooder extends StatelessWidget {
  const Fooder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Create Theme
    //TODO: Apply Home Widget

    return MaterialApp(
      //TODO: Add theme

      title: 'Fooder',
      home: Scaffold(
        //TODO: Style the title

        appBar: AppBar(
          title: const Text('Fooder'),
        ),
        //TODO: Style the body text
        body: const Center(
          child: Text('Let\'s get cooking'),
        ),
      ),
    );
  }
}
