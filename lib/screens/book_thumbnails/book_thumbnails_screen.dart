import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/internet_error_container.dart';
import '../../data/cubit/thumbnails_cubit.dart';
import '../../../theme/constants.dart';
import '../../models/best_books_thumbnails.dart' as modelA;

part 'components/header.dart';
part 'components/book_thumbnail.dart';

class BookThumbnailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: BlocProvider<ThumbnailsCubit>(
        create: (_) =>
            ThumbnailsCubit()..getCategoryThumbnails("Hardcover Fiction"),
        child: BlocBuilder<ThumbnailsCubit, ThumbnailsState>(
          builder: (_, state) {
            if (state is ThumbnailsLoading ||
                state is ThumbnailsLoaded ||
                state is ThumbnailsInitial) {
              final String? categoryTitle;
              final List<BookThumbnail> booksThumbnails;
              if (state is ThumbnailsLoaded) {
                categoryTitle = state.bestBooksThumbnails.categoryTitle;
                booksThumbnails = state.bestBooksThumbnails.bookThumbnails
                    .map((bookThumbnail) {
                  return BookThumbnail(bookThumbnail);
                }).toList();
              } else {
                categoryTitle = null;
                booksThumbnails = List.filled(2, BookThumbnail());
              }

              return Column(
                children: [
                  Header(categoryTitle: categoryTitle),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 1 + booksThumbnails.length,
                          itemBuilder: (context, i) {
                            if (i == 0) {
                              return SizedBox(height: 14);
                            }
                            return booksThumbnails[i - 1];
                          }),
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  Header(isError: true),
                  Spacer(),
                  InternetErrorContainer(),
                  Spacer(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
