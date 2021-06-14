import 'package:flutter/material.dart';

import '../constants.dart';

class CoverArt extends StatelessWidget {
  const CoverArt({
    Key? key,
    required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: heightOfBestOfCategory * 0.57,
        padding: EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.12),
              offset: Offset(0, 2),
              blurRadius: 20,
            ),
          ],
        ),
        child: Image.asset(
          imageURL,
        ),
      ),
    );
  }
}
