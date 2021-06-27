part of '../book_details_screen.dart';

class AddToCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 40,
      right: 40,
      bottom: heightOfButtonPlusBottomMargin  * 0.45,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          height: heightOfButtonPlusBottomMargin * 0.55,
          alignment: Alignment.center,
          child: Text(
            "ADD TO CART",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: secondaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
