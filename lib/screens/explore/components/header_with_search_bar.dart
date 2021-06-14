import 'package:flutter/material.dart';

import '../constants.dart';
import '../../../constants.dart';
import '../../explore/components/search_bar.dart';

class HeaderWithSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: heightOfHeader,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
              horizontalPadding,
              0,
              horizontalPadding,
              55,
            ),
            width: double.infinity,
            height: heightOfHeader - 20,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 28,
                ),
                SizedBox(height: 5),
                Text(
                  "1108 Government St, Victoria, BC V8W 1Y2 ",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(0, 1),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: darkGreyColor),
                  SizedBox(width: 2.5),
                  Expanded(
                    child: SearchBar(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}