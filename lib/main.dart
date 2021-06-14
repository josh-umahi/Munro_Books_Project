import 'package:flutter/material.dart';

import 'theme.dart';
import 'screens/explore/explore_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Munro Books',
      debugShowCheckedModeBanner: false,
      theme: ourTheme,
      home: ExploreScreen(),
    );
  }
}
