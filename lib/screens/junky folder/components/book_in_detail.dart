import 'package:flutter/material.dart';
import 'go_back_button.dart';

class BookInDetail extends StatelessWidget {
  const BookInDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 8,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(width: 1),
                  Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Image.asset(
                        "assets/images/book_covers/a.jpg",
                        height: 255,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Testaments: : A Testaments: A Testaments: A ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Margaret Atwood",
                          style: TextStyle(
                            color: Color(0xFF91959B),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "\$35.00",
                              style: TextStyle(
                                color: Color(0xFF89BD55),
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "HARDCOVER",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
