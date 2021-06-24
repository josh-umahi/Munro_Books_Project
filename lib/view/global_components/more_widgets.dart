import 'package:flutter/material.dart';

import '../theme/constants.dart';

// ignore: non_constant_identifier_names
Text StockTotalText(int stockTotal) {
  return stockTotal == 0
      ? Text(
          "Sold out",
          style: TextStyle(
            fontSize: 16,
            color: errorTextColor,
            fontWeight: FontWeight.w500,
          ),
        )
      : Text(
          "$stockTotal in stock now",
          maxLines: 1,
          style: TextStyle(
            fontSize: 16,
            color: darkGreyColor,
            fontWeight: FontWeight.w500,
          ),
        );
}
