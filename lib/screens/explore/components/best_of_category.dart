import 'package:flutter/material.dart';

import 'cover_art.dart';
import '../constants.dart';

class BestOfCategory extends StatelessWidget {
  const BestOfCategory({
    Key? key,
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
                child: CategoryItems(),
              ),
            ],
          ),
          Positioned(
            top: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: CategoryTitle(),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                width: 140,
                child: Text(
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
  const CategoryTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
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
  const CategoryItems({
    Key? key,
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
            children: [
              CoverArt(
                imageURL: "assets/images/book_covers/a.jpg",
              ),
              CoverArt(
                imageURL: "assets/images/book_covers/b.jpg",
              ),
              CoverArt(
                imageURL: "assets/images/book_covers/c.jpg",
              ),
              CoverArt(
                imageURL: "assets/images/book_covers/d.jpg",
              ),
              CoverArt(
                imageURL: "assets/images/book_covers/e.jpg",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
