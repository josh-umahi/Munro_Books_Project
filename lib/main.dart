import 'package:flutter/material.dart';

import 'view/theme/theme.dart';
import 'view/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Munro Books',
      debugShowCheckedModeBanner: false,
      theme: ourTheme,
      onGenerateRoute: _appRouter.generateRoute,
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }
}
