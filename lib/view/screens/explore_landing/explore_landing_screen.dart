import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../global_components/internet_error_container.dart';
import '../../../BLoC/cubits/cover_arts_cubit.dart';
import '../../theme/constants.dart';
import '../../../data/models/best_books_cover_arts.dart';

part 'components/header_with_search_bar.dart';
part 'components/best_of_category.dart';
part 'components/search_bar.dart';
part 'components/cover_art.dart';

class ExploreLandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 2,
        elevation: 0,
      ),
      body: BlocProvider<CoverArtsCubit>(
        create: (_) => CoverArtsCubit()..getBestBooksCoverArts(),
        child: BlocBuilder<CoverArtsCubit, CoverArtsState>(
          builder: (_, state) {
            if (state is CoverArtsLoading ||
                state is CoverArtsLoaded ||
                state is CoverArtsInitial) {
              if (state is CoverArtsLoaded) {
                final bestBooksCoverArts =
                    state.bestBooksCoverArts.map((bookCoverArt) {
                  return BestOfCategory(bookCoverArt);
                }).toList();

                return ListView.builder(
                  itemCount: 1 + bestBooksCoverArts.length,
                  itemBuilder: (context, i) {
                    if (i == 0) {
                      return HeaderWithSearchBar();
                    }
                    return bestBooksCoverArts[i - 1];
                  },
                );
              } else {
                return ListView(
                  children: [
                    HeaderWithSearchBar(),
                    ...List.filled(2, BestOfCategory()),
                  ],
                );
              }
            } else {
              return Column(
                children: [
                  HeaderWithSearchBar(),
                  Spacer(),
                  InternetErrorContainer(),
                  Spacer(flex: 2),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
