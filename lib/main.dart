import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'config_reader.dart';
import 'injection.dart';
import 'presentation/app_widget.dart';

void main() async {
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
