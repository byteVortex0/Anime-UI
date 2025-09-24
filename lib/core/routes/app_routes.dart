import 'package:anime/core/routes/base_routes.dart';
import 'package:anime/features/details/presentation/ui/details_screen.dart';
import 'package:anime/features/home/presentation/ui/home_screen.dart';
import 'package:anime/features/upgrade_plan/presentation/ui/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = 'home';
  static const String details = 'details';
  static const String upgradePlan = 'upgradePlan';
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case home:
        return BaseRoutes(page: HomeScreen());
      case details:
        return BaseRoutes(page: DetailsScreen());
      case upgradePlan:
        return BaseRoutes(page: UpgradePlanScreen());

      default:
        return null;
    }
  }
}
