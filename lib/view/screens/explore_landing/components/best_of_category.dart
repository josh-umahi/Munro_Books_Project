part of '../explore_landing_screen.dart';

class BestOfCategory extends StatelessWidget {
  final BestBooksCoverArts? category;
  BestOfCategory([this.category]);

  @override
  Widget build(BuildContext context) {
    final isPlaceholder;
    (category == null) ? isPlaceholder = true : isPlaceholder = false;

    return Container(
      margin: const EdgeInsets.only(bottom: 17),
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
                    ? CategoryItems()
                    : CategoryItems(category!.bookCoverArts),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: isPlaceholder
                  ? CategoryTitle()
                  : CategoryTitle(category!.categoryTitle),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ElevatedButton(
              onPressed: isPlaceholder
                  ? () {}
                  : () => Navigator.of(context).pushNamed(
                        "/thumbnails",
                        arguments: category!.categoryTitle,
                      ),
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
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
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
  final String? title;
  CategoryTitle([this.title]);

  @override
  Widget build(BuildContext context) {
    final isPlaceholder;
    (title == null) ? isPlaceholder = true : isPlaceholder = false;

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
  final List<BookCoverArt>? items;
  CategoryItems([this.items]);

  @override
  Widget build(BuildContext context) {
    final isPlaceholder;
    (items == null) ? isPlaceholder = true : isPlaceholder = false;

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Row(
            children: isPlaceholder
                ? List.filled(5, CoverArt())
                : items!.map((item) {
                    return CoverArt(item.imageUrl);
                  }).toList(),
          ),
        ),
      ],
    );
  }
}
