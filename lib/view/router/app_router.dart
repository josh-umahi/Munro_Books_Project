import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/splash_screen.dart';
import '../screens/explore_landing/explore_landing_screen.dart';
import '../screens/book_thumbnails/book_thumbnails_screen.dart';
import '../screens/book_details/book_details_screen.dart';
import '../../BLoC/cubits/cover_arts_cubit.dart';
import '../../BLoC/cubits/thumbnails_cubit.dart';
import '../../BLoC/cubits/details_cubit.dart';
import '../global_components/bottom_nav_bar.dart';

class AppRouter {
  final _coverArtsCubit = CoverArtsCubit()..getBestBooksCoverArts();
  final _thumbnailsCubit = ThumbnailsCubit();
  final _detailsCubit = DetailsCubit();

  final _bottomNavBar = BottomNavBar();

  Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/landing':
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
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
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _thumbnailsCubit,
            child: Scaffold(
              body: BookThumbnailsScreen(),
              bottomNavigationBar: _bottomNavBar,
            ),
          ),
        );
      case '/details':
        _detailsCubit.getDetails(args as String);
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _detailsCubit,
            child: Scaffold(
              body: BookDetailsScreen(),
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
