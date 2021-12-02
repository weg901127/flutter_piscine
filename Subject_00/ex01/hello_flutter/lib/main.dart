import 'package:flutter/material.dart';
import 'package:hello_flutter/0_presentation/core/app_widget.dart';

class EnvironmentConfig {
  static const APP_NAME = String.fromEnvironment('DEFINEEXAMPLE_APP_NAME',
      defaultValue: 'awesomeApp');
  static const APP_SUFFIX = String.fromEnvironment('DEFINEEXAMPLE_APP_SUFFIX');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(AppWidget());
}
