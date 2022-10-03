import 'package:flutter/material.dart';
import '../utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../movements/view/movements_page.dart';
import '../../portfolio/view/portfolio_page.dart';
import '../utils/app_colors.dart';
import '../utils/assets.dart';

class BottomNavBar extends StatelessWidget {
  final int indexSelected;

  const BottomNavBar({super.key, required this.indexSelected});

  @override
  Widget build(BuildContext context) {
    void changePage(int index) {
      switch (index) {
        case 0:
          Navigator.pushNamed(context, PortfolioPage.route);
          break;
        case 1:
          Navigator.pushNamed(context, MovementsPage.route);
          break;
      }
    }

    return BottomNavigationBar(
      selectedItemColor: colorTextBlack,
      onTap: changePage,
      selectedLabelStyle: bottomNavLabelsStyle(),
      unselectedLabelStyle: bottomNavLabelsStyle(),
      currentIndex: indexSelected,
      items: [
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage(warrenIcon),
            color: colorTextGrey,
          ),
          activeIcon: const ImageIcon(
            AssetImage(warrenIcon),
            color: pinkWarren,
          ),
          label: AppLocalizations.of(context)!.bottomBarPortfolio,
        ),
        BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage(centIcon),
            color: colorTextGrey,
          ),
          activeIcon: const ImageIcon(
            AssetImage(centIcon),
            color: pinkWarren,
          ),
          label: AppLocalizations.of(context)!.bottomBarMovements,
        ),
      ],
    );
  }
}
