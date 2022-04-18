import 'package:flutter/material.dart';
import 'package:visual_data_app/ui/pages/Home/home_page.dart';

///
/// Class app router for delimitate the diferent router of de detail screen.
///
class AppRouter {
  Route onGenerateroute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      default: return MaterialPageRoute( builder: (_) => const HomePage(),);
    }
  }
}
