import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'src/app.dart';
import 'src/features/splash/splash_screen.dart';
import 'src/service_locator.dart';

void main() async {
  final done = Completer<void>();
  runApp(const SplashScreen());
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive default directory
  final dir = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = dir.path;
  // Initialize ServiceLocator
  await ServiceLocator.initProviders();

  await Future.delayed(const Duration(seconds: 2), () {});
  done.complete();

  runApp(const MyApp());
}
