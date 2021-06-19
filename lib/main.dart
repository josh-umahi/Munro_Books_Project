import 'package:flutter/material.dart';

import 'view/theme/theme.dart';
import 'view/screens/explore_landing/explore_landing_screen.dart';
import 'view/global_components/bottom_nav_bar.dart';
import 'view/screens/book_thumbnails/book_thumbnails_screen.dart';

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
          body: BookThumbnailsScreen(),
          // body: ExploreLandingScreen(),
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
