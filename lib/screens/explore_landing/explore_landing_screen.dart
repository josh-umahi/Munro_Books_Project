import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/cubit/cover_arts_cubit.dart';
import '../../theme/constants.dart';
import '../../models/best_books_cover_arts.dart';

part 'components/header_with_search_bar.dart';
part 'components/best_of_category.dart';
part 'components/search_bar.dart';
part 'components/cover_art.dart';

class ExploreLandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return BlocProvider<CoverArtsCubit>(
      create: (_) => CoverArtsCubit()..getBestBooksCoverArts(),
      child: BlocBuilder<CoverArtsCubit, CoverArtsState>(
        builder: (_, state) {
          if (state is CoverArtsLoading ||
              state is CoverArtsLoaded ||
              state is CoverArtsInitial) {
            return ListView(
              padding: EdgeInsets.zero,
              children: [
                HeaderWithSearchBar(),
                Column(
                  children: (state is CoverArtsLoaded)
                      ? [
                          ...state.bestBooksCoverArts.map((bookCoverArt) {
                            return BestOfCategory(bookCoverArt);
                          }),
                          SizedBox(height: 20),
                        ]
                      : List.filled(3, BestOfCategory()),
                ),
              ],
            );
          } else {
            return ErrorDisplay();
          }
        },
      ),
    );
  }
}

class ErrorDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWithSearchBar(),
        Spacer(),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                color: darkGreyColor.withOpacity(0.7),
                size: 35,
              ),
              Text(
                "There is a problem with your internet connection",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: darkGreyColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
