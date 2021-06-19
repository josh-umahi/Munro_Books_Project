import 'package:flutter/material.dart';

import '../../../theme/constants.dart';

part 'components/header.dart';
part 'components/book_thumbnail.dart';

class BookThumbnailsScreen extends StatelessWidget {
  const BookThumbnailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Header(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              BookThumbnail(),
              BookThumbnail(),
            ],
          ),
        ),
      ],
    );
  }
}