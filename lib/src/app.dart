import 'package:flutter/material.dart';

import 'core/router/app_router.dart';
import 'core/theme/q_theme.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'app',
      theme: QTheme.qThemeDark,
      routerConfig: AppRouter.router,
    );
  }
}
