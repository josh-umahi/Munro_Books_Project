import 'package:flutter/material.dart';

import '../../../constants.dart';

class CoverArt extends StatelessWidget {
  const CoverArt({
    Key? key,
    this.imageURL,
    this.isPlaceholder = false,
  }) : super(key: key);

  final String? imageURL;
  final bool isPlaceholder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: heightOfBestOfCategory * 0.57,
        padding: EdgeInsets.only(
          right: 10,
        ),
        decoration: isPlaceholder
            ? null
            : BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.12),
                    offset: Offset(0, 2),
                    blurRadius: 20,
                  ),
                ],
              ),
        child: isPlaceholder
            ? Container(
                width: 80,
                color: placeholderColor,
              )
            : Image.asset(
                imageURL!,
              ),
      ),
    );
  }
}
