import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/header_with_search_bar.dart';
import 'components/best_of_category.dart';
import '../../components/bottom_nav_bar.dart';
import '../../data/cubit/cover_arts_cubit.dart';
import '../../../constants.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: BlocProvider<CoverArtsCubit>(
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
                              return BestOfCategory(category: bookCoverArt);
                            }),
                            SizedBox(height: 20),
                          ]
                        : List.filled(
                            3,
                            BestOfCategory(isPlaceholder: true),
                          ),
                  ),
                ],
              );
            } else {
              return ErrorDisplay();
            }
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
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
//   ListView(
//     padding: EdgeInsets.zero,
//     children: [
//       HeaderWithSearchBar(),
//       Container(
//         child: BlocBuilder<CoverArtsCubit, CoverArtsState>(
//           builder: (context, state) {
//             if (state is CoverArtsLoaded) {
//               return Column(
//                 children: [
//                   ...state.bestBooksCoverArts.map((bookCoverArt) {
//                     return BestOfCategory(category: bookCoverArt);
//                   }),
//                   SizedBox(height: 20),
//                 ],
//               );
//             } else if (state is CoverArtsInitial ||
//                 state is CoverArtsLoading) {
