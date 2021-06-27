part of '../book_thumbnails_screen.dart';

class Header extends StatelessWidget {
  final String? categoryTitle;
  final bool isError;
  Header({this.categoryTitle, this.isError = false});

  @override
  Widget build(BuildContext context) {
    final isPlaceholder;
    (categoryTitle == null) ? isPlaceholder = true : isPlaceholder = false;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 60, 16, 10),
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
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          isError
              ? SizedBox(height: 8)
              : Column(
                  children: [
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
                            "Best of $categoryTitle",
                            style: TextStyle(
                              fontFamily: "DINAlternate",
                              fontSize: 26,
                            ),
                          )
                  ],
                ),
        ],
      ),
    );
  }
}
