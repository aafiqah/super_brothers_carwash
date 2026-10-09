import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../index.dart';

class AppNavigation {
  AppNavigation._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    initialLocation: '/onBoarding_page',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      /// ------------------------------------------------
      /// 🧭 ONBOARDING FLOW
      /// ------------------------------------------------
      GoRoute(
        name: 'onBoarding_page',
        path: '/onBoarding_page',
        builder: (context, state) => const OnBoardingPage(),
        routes: [
          // GoRoute(
          //   name: 'forgot_password_page',
          //   path: 'forgot_password_page',
          //   builder: (context, state) => ForgotPasswordPage(),
            
          // ),
        ],
      ),
 ],
  );
}