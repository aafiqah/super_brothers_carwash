import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:super_brothers/application/index.dart';

import 'core/index.dart';
import 'l10n/index.dart';
import 'presentation/index.dart';

class SuperBrothersApp extends StatelessWidget {
  final String environment;
  const SuperBrothersApp({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SwitchLanguageCubit(),
      child: _SuperBrothersAppView(environment: environment),
    );
  }
}

class _SuperBrothersAppView extends StatelessWidget {
  final String environment;
  const _SuperBrothersAppView({required this.environment});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchLanguageCubit, SwitchLanguageState>(
      builder: (context, languageState) {
        return MaterialApp.router(
          title: 'Kad Pekerja Madani ($environment)',
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
          locale: languageState.locale,
          routerConfig: AppNavigation.router,
        );
      },
    );
  }
}
