part of '../book_thumbnails_screen.dart';

class Header extends StatelessWidget {
  final String? categoryTitle;
  Header([this.categoryTitle]);

  @override
  Widget build(BuildContext context) {
    final isPlaceholder;
    (categoryTitle == null) ? isPlaceholder = true : isPlaceholder = false;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 60, 16, 10),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: lightGreyColor,
        border: Border(
          bottom: BorderSide(width: 0.5, color: darkGreyColor),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Icon(Icons.arrow_back),
          ),
          SizedBox(height: 18),
          isPlaceholder
              ? FractionallySizedBox(
                  widthFactor: 0.75,
                  child: Container(
                    color: placeholderColor,
                    height: 26,
                  ),
                )
              : Text(
                  "Best of Paperback Fiction",
                  style: TextStyle(
                    fontFamily: "DINAlternate",
                    fontSize: 26,
                  ),
                )
        ],
      ),
    );
  }
}
