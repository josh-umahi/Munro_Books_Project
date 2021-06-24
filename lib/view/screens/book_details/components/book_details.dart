part of '../book_details_screen.dart';

class BookDetails extends StatelessWidget {
  final modelA.BookDetails bookDetails;
  BookDetails(this.bookDetails);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  bookDetails.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${bookDetails.authors}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: darkGreyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          verticalSpacing,
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                top: borderSides,
                bottom: borderSides,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$${bookDetails.price}",
                        style: TextStyle(
                          fontSize: 20,
                          color: priceColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "  ${bookDetails.bookMaterial.asString}",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                StockTotalText(bookDetails.stockTotal),
              ],
            ),
          ),
          verticalSpacing,
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 3),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border(bottom: borderSides),
                ),
                child: Text(
                  "ABOUT THIS BOOK",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "${bookDetails.description}",
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
