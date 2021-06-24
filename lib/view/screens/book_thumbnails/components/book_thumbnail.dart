part of '../book_thumbnails_screen.dart';

class BookThumbnail extends StatelessWidget {
  final modelA.BookThumbnail? bookThumbnail;
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
                  bookThumbnail!.imageUrl,
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
              child: BookThumbnailDetails(bookThumbnail),
            ),
          ),
        ],
      ),
    );
  }
}

class BookThumbnailDetails extends StatelessWidget {
  final modelA.BookThumbnail? bookThumbnail;
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
                bookThumbnail!.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "${bookThumbnail!.authors}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  color: darkGreyColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "\$${bookThumbnail!.price}",
                style: TextStyle(
                  fontSize: 20,
                  color: priceColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              StockTotalText(bookThumbnail!.stockTotal),
            ],
    );
  }
}
