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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 1
    return Scaffold(
      body: BlocProvider<CoverArtsCubit>(
        create: (_) => CoverArtsCubit()..getBestBooksCoverArts(),
        child: BlocBuilder<CoverArtsCubit, CoverArtsState>(
          builder: (context, state) {
            if (state is CoverArtsError) {
              return ErrorDisplay();
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderWithSearchBar(),
                    Container(
                      child: (state is CoverArtsLoaded)
                          ? Column(
                              children: [
                                BestOfCategory(),
                                BestOfCategory(),
                                BestOfCategory(),
                                SizedBox(height: 20),
                              ],
                            )
                          : Column(
                              children: [
                                BestOfCategory(isPlaceholder: true),
                                BestOfCategory(isPlaceholder: true),
                                BestOfCategory(isPlaceholder: true),
                              ],
                            ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class ErrorDisplay extends StatelessWidget {
  const ErrorDisplay({
    Key? key,
  }) : super(key: key);

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
                "There is a problem with your  internet connection",
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
