import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(width: 1),
            Text(
              "Explore",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}