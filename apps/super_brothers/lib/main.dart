import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'core/config/index.dart';
import 'infrastructure/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalStorageService().init();

  AppEnvironment.init(Environment.production);

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(SuperBrothersApp(environment: AppEnvironment.name));
}