import 'package:flutter/material.dart';
import 'package:flutter_application_2/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'details/view/crypto_details_page.dart';
import 'shared/models/arguments_model.dart';
import 'shared/utils/routes.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'Crypto Wallet',
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.route,
        // onGenerateRoute: (settings) {
        //   if (settings.name == CryptoDetailsPage.route) {
        //     final args = settings.arguments as ArgumentsModel;

        //     return MaterialPageRoute(
        //       builder: (context) {
        //         return CryptoDetailsPage(
        //           crypto: args.crypto,
        //         );
        //       },
        //     );
        //   }
        //   return null;
        // },
        routes: appRoutes,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', 'BR'),
          Locale('en', ''),
        ],
      ),
    ),
  );
}
