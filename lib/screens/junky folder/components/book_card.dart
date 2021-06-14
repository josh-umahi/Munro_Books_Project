import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164,
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FractionallySizedBox(
            child: Image.asset(
              "assets/images/book_covers/a.jpg",
            ),
            heightFactor: 0.93,
          ),
          SizedBox(width: 13),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Color(0xFF91959B)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Testaments: A Testaments: A Testaments: A Testaments: A ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Margaret Atwood",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF91959B),
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
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
                    "3 in stock now",
                    style: TextStyle(
                      color: Color(0xFF91959B),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
