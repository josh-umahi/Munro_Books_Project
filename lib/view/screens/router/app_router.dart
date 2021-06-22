import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screens/splash_screen.dart';
import '../../screens/explore_landing/explore_landing_screen.dart';
import '../../screens/book_thumbnails/book_thumbnails_screen.dart';
import '../../../BLoC/cubits/cover_arts_cubit.dart';
import '../../../BLoC/cubits/thumbnails_cubit.dart';
import '../../global_components/bottom_nav_bar.dart';

class AppRouter {
  final _coverArtsCubit = CoverArtsCubit()..getBestBooksCoverArts();
  final _thumbnailsCubit = ThumbnailsCubit();
  final _bottomNavBar = BottomNavBar();

  Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(builder: (_) => SplashScreen());
      // case '/landing':
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _coverArtsCubit,
            child: Scaffold(
              body: ExploreLandingScreen(),
              bottomNavigationBar: _bottomNavBar,
            ),
          ),
        );
      case '/thumbnails':
        _thumbnailsCubit.getCategoryThumbnails(args as String);
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _thumbnailsCubit,
            child: Scaffold(
              body: BookThumbnailsScreen(),
              bottomNavigationBar: _bottomNavBar,
            ),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text("PAGE NOT FOUND"),
        ),
      ),
    );
  }

  dispose() {
    _coverArtsCubit.close();
    _thumbnailsCubit.close();
  }
}
