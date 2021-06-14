import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/header_with_search_bar.dart';
import 'components/best_of_category.dart';
import '../../components/bottom_nav_bar.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 1
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBar(),
            BestOfCategory(),
            BestOfCategory(),
            BestOfCategory(),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
