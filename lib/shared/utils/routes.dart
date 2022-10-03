import 'package:flutter/material.dart';
import '../../movements/view/movements_page.dart';
import '../../portfolio/view/portfolio_page.dart';

import '../../conversion/view/conversion_page.dart';
import '../../splash/splash_screen.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  SplashScreen.route: (context) => const SplashScreen(),
  PortfolioPage.route: (context) => const PortfolioPage(),
  MovementsPage.route: (context) => const MovementsPage(),
  ConversionPage.route: (context) => const ConversionPage(),
};
