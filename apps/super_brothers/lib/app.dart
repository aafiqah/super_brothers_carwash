import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/index.dart';
import 'l10n/index.dart';
import 'presentation/index.dart';

class SuperBrothersApp extends StatelessWidget {
  final String environment;
  const SuperBrothersApp({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    return  _SuperBrothersAppView(environment: environment);
  }
}

class _SuperBrothersAppView extends StatelessWidget {
  final String environment;
  const _SuperBrothersAppView({required this.environment});

  @override
  Widget build(BuildContext context) {
     return MaterialApp.router(
          title: 'Super Brothers ($environment)',
          themeMode: ThemeMode.system,
          theme: SuperBrothersTheme.lightTheme(context),
          darkTheme: SuperBrothersTheme.darkTheme(context),
          debugShowCheckedModeBanner: false,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supported in supportedLocales) {
              if (supported.languageCode == locale?.languageCode) {
                return supported;
              }
            }
            return supportedLocales.first;
          },
          routerConfig: AppNavigation.router,
        );
    
  }
}