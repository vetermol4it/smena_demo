import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smena_demo/common/di/init_di.dart';
import 'package:smena_demo/common/navigation/app_router.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final router = getIt<AppRouter>().router;
            return MaterialApp.router(
              routerConfig: router,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
