part of '../book_thumbnails_screen.dart';

class BookThumbnail extends StatelessWidget {
  final BookThumbnail? bookThumbnail;
  BookThumbnail([this.bookThumbnail]);

  @override
  Widget build(BuildContext context) {
    final isPlaceholder;
    (bookThumbnail == null) ? isPlaceholder = true : isPlaceholder = false;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isPlaceholder
              ? Container(
                  width: 105,
                  height: 165,
                  color: placeholderColor,
                )
              : Image.asset(
                  "assets/images/book_covers/a.jpg",
                  height: 165,
                ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 12),
              height: 175,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.5, color: darkGreyColor),
                ),
              ),
              child: BookThumbnailDetails(),
            ),
          ),
        ],
      ),
    );
  }
}

class BookThumbnailDetails extends StatelessWidget {
  final BookThumbnail? bookThumbnail;
  BookThumbnailDetails([this.bookThumbnail]);

  @override
  Widget build(BuildContext context) {
    final isPlaceholder;
    (bookThumbnail == null) ? isPlaceholder = true : isPlaceholder = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: isPlaceholder
          ? [
              FractionallySizedBox(
                widthFactor: 0.75,
                child: Container(
                  color: placeholderColor,
                  height: 30,
                ),
              ),
              Spacer(),
              FractionallySizedBox(
                widthFactor: 0.38,
                child: Container(
                  color: placeholderColor,
                  height: 40,
                ),
              ),
            ]
          : [
              Text(
                "The Testaments: A ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                "by Margaret Atwood",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, color: darkGreyColor),
              ),
              Spacer(),
              Text(
                "\$35.00",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              Text(
                "3 in stock now",
                maxLines: 1,
                style: TextStyle(fontSize: 16, color: darkGreyColor),
              ),
            ],
    );
  }
}
