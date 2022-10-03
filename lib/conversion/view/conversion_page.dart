import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../shared/widgets/custom_app_bar.dart';

class ConversionPage extends StatelessWidget {
  static const route = '/conversion';

  const ConversionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        width: MediaQuery.of(context).size.width,
        title: AppLocalizations.of(context)!.conversion,
      ),
      body: Container(),
    );
  }
}
