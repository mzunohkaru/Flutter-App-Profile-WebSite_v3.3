import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app.dart';
import '../../ui/policys/mobile_policy_page.dart';

// GoRouterのProviderを作成
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const App(),
      ),
      GoRoute(
        path: '/privacy-policy',
        name: 'privacy-policy',
        builder: (context, state) => Scaffold(
          backgroundColor: Colors.black54,
          body: MobilePolicyPage(
            isJP: true,
          ),
        ),
      ),
    ],
    debugLogDiagnostics: true,
  );
});
