import 'package:flutter/material.dart';
import 'package:munro_books_app/models/best_books_cover_arts.dart';

import '../../../constants.dart';
import 'cover_art.dart';

class BestOfCategory extends StatelessWidget {
  final bool isPlaceholder;
  final BestBooksCoverArts? category;

  BestOfCategory({
    Key? key,
    this.isPlaceholder = false,
    this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 17),
      height: heightOfBestOfCategory,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Column(
            children: [
              Container(
                height: heightOfBestOfCategory - 20,
                child: isPlaceholder
                    ? CategoryItems(
                        isPlaceholder: isPlaceholder,
                      )
                    : CategoryItems(
                        items: category!.bookCoverArts,
                      ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: isPlaceholder
                  ? CategoryTitle(
                      isPlaceholder: isPlaceholder,
                    )
                  : CategoryTitle(
                      title: category!.categoryTitle,
                    ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: isPlaceholder
                    ? placeholderColor
                    : Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                width: 140,
                child: isPlaceholder
                    ? null
                    : Text(
                        "SEE ALL",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final bool isPlaceholder;
  final String? title;

  const CategoryTitle({
    Key? key,
    this.isPlaceholder = false,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isPlaceholder
        ? FractionallySizedBox(
            widthFactor: 0.58,
            child: Container(
              color: placeholderColor,
              height: 18,
            ),
          )
        : Text(
            "Best of $title",
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          );
  }
}

class CategoryItems extends StatelessWidget {
  final bool isPlaceholder;
  final List<BookCoverArt>? items;

  const CategoryItems({
    Key? key,
    this.isPlaceholder = false,
    this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Row(
            children: isPlaceholder
                ? List.filled(
                    5,
                    CoverArt(isPlaceholder: isPlaceholder),
                  )
                : items!.map((item) {
                    return CoverArt(imageURL: item.imageUrl);
                  }).toList(),
          ),
        ),
      ],
    );
  }
}
