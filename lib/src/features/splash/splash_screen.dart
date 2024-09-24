import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/q_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: QTheme.qThemeDark,
      home: Scaffold(
        body: Center(
          child: SvgPicture.asset('assets/images/img-logo.svg'),
        ),
      ),
    );
  }
}
