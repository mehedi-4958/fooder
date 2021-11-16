import 'package:flutter/material.dart';
import 'fooder_theme.dart';

void main() {
  runApp(const Fooder());
}

class Fooder extends StatelessWidget {
  const Fooder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderTheme.dark();
    //TODO: Apply Home Widget

    return MaterialApp(
      theme: theme,
      title: 'Fooder',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooder',
            style: theme.textTheme.headline6,
          ),
        ),
        body: Center(
          child: Text(
            'Let\'s get cooking',
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
