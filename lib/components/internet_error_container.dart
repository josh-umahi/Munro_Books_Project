import 'package:flutter/material.dart';

import '../../theme/constants.dart';

class InternetErrorContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: darkGreyColor.withOpacity(0.7),
            size: 35,
          ),
          Text(
            "There is a problem with your internet connection",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: darkGreyColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
