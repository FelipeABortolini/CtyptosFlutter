import 'package:flutter/material.dart';

import '../portfolio/view/portfolio_page.dart';
import '../shared/utils/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const route = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
    ).then(
      (value) {
        Navigator.pushNamed(
          context,
          PortfolioPage.route,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          warrenSplash,
          height: 150,
        ),
      ),
    );
  }
}
