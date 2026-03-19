import 'package:flutter/material.dart';
import 'package:nft_market/features/home/presentation/home_screen.dart';
import 'package:nft_market/features/onboarding/presentation/onboarding_screen.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteNames.kOnboardingRoute: (context) => const OnboardingScreen(),
    RouteNames.kHomeRoute: (context) => const HomeScreen(),
  };
}

class RouteNames {
  static const String kOnboardingRoute = "onboarding";
  static const String kHomeRoute = "home";
}
