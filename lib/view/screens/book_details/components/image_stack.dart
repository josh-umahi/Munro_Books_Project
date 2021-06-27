part of '../book_details_screen.dart';

class ImageStack extends StatelessWidget {
  final String imageURL;
  const ImageStack(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: heightOfImageStack,
          width: double.infinity,
          child: Image.asset(imageURL, fit: BoxFit.cover),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 0),
            child: Container(
              decoration: BoxDecoration(
                color: secondaryBlue.withOpacity(0.75),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 60, 16, 10),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(imageURL, height: 210),
              ),
            ],
          ),
        ),
      ],
    );
  }
}