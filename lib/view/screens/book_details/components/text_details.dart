part of '../book_details_screen.dart';

class TextDetails extends StatelessWidget {
  final BookDetails textDetails;
  TextDetails(this.textDetails);

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
                  textDetails.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${textDetails.authors}",
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
                        text: textDetails.price,
                        style: TextStyle(
                          fontSize: 20,
                          color: priceColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "  ${textDetails.bookMaterial.asString}",
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
                StockTotalText(textDetails.stockTotal),
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
                "${textDetails.description}",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: heightOfButtonPlusBottomMargin + 40),
            ],
          ),
        ],
      ),
    );
  }
}
