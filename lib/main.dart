import 'package:flutter/material.dart';

import 'theme/theme.dart';
import 'screens/explore_landing/explore_landing_screen.dart';
import '../components/bottom_nav_bar.dart';
import '../screens/book_thumbnails/book_thumbnails_screen.dart';

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
        home: Scaffold(
          // body: BookThumbnailsScreen(),
          body: ExploreLandingScreen(),
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
