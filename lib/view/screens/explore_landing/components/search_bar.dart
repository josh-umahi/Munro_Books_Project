part of '../explore_landing_screen.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        hintText: "Search Books by Title or Author",
        hintStyle: TextStyle(
          color: darkGreyColor,
          fontSize: 16,
        ),
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
      ),
    );
  }
}
