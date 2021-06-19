part of '../explore_landing_screen.dart';

class CoverArt extends StatelessWidget {
  final String? imageURL;
  CoverArt([this.imageURL]);

  @override
  Widget build(BuildContext context) {
    final isPlaceholder;
    (imageURL == null) ? isPlaceholder = true : isPlaceholder = false;

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: heightOfBestOfCategory * 0.57,
        padding: const EdgeInsets.only(
          right: 10,
        ),
        decoration: isPlaceholder
            ? null
            : BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.12),
                    offset: Offset(0, 2),
                    blurRadius: 20,
                  ),
                ],
              ),
        child: isPlaceholder
            ? Container(
                width: 80,
                color: placeholderColor,
              )
            : Image.asset(
                imageURL!,
              ),
      ),
    );
  }
}
