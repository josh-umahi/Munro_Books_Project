part of '../book_details_screen.dart';

class DetailsErrorContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 60, 16, 18),
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
            ],
          ),
        ),
        Spacer(),
        InternetErrorContainer(),
        Spacer(),
      ],
    );
  }
}
