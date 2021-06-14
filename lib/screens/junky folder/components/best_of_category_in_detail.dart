import 'package:flutter/material.dart';

import 'book_card.dart';
import 'go_back_button.dart';

class BestOfCategoryInDetail extends StatelessWidget {
  final horizontalPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
        ),
        child: Column(
          children: [
            GoBackButton(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(height: horizontalPadding),
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Container(
                      padding: EdgeInsets.only(
                        bottom: 5,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.1, color: Colors.black),
                        ),
                      ),
                      child: Text(
                        "Best of Paperback Fiction",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "DINAlternate",
                          fontSize: 27,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  BookCard(),
                  BookCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}