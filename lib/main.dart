import 'package:bloc_test/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Album(
    appRouter: AppRouter(),
  ));
}

class Album extends StatelessWidget {
  const Album({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
