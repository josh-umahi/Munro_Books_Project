import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munro_books_app/data/models/book.dart';

import '../../../BLoC/cubits/details_cubit.dart';
import '../../theme/constants.dart';
import '../../../data/models/book_details.dart' as modelA;
import '../../global_components/more_widgets.dart';

part "components/book_details.dart";

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (_, state) {
          if (state is DetailsLoaded) {
            return Stack(
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 400,
                              width: double.infinity,
                              child: Image.asset(
                                state.bookDetails.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned.fill(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned.fill(
                          child: Container(
                            color: secondaryBlue.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                    BookDetails(state.bookDetails),
                  ],
                ),
                Positioned(
                  left: 40,
                  right: 40,
                  bottom: 20,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      height: 45,
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
                    ),
                  ),
                ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
