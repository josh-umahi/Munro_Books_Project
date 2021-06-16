import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'cover_art.dart';

class BestOfCategory extends StatelessWidget {
  final bool isPlaceholder;

  const BestOfCategory({Key? key, this.isPlaceholder = false}) : super(key: key);

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
                child: CategoryItems(isPlaceholder: isPlaceholder),
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
              child: CategoryTitle(isPlaceholder: isPlaceholder),
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

  const CategoryTitle({Key? key, this.isPlaceholder = false}) : super(key: key);

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
            "Best of Paperback Fiction",
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

  const CategoryItems({Key? key, this.isPlaceholder = false}) : super(key: key);

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
            children: [
              CoverArt(
                isPlaceholder: isPlaceholder,
                imageURL: "assets/images/book_covers/a.jpg",
              ),
              CoverArt(
                isPlaceholder: isPlaceholder,
                imageURL: "assets/images/book_covers/b.jpg",
              ),
              CoverArt(
                isPlaceholder: isPlaceholder,
                imageURL: "assets/images/book_covers/c.jpg",
              ),
              CoverArt(
                isPlaceholder: isPlaceholder,
                imageURL: "assets/images/book_covers/d.jpg",
              ),
              CoverArt(
                isPlaceholder: isPlaceholder,
                imageURL: "assets/images/book_covers/e.jpg",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
