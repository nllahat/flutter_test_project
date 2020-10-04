import 'dart:convert';
import 'package:flutter/services.dart';

abstract class ConfigReader {
  static Map<String, dynamic> _config;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/app_config.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String getFootballAPIToken() {
    return _config['footballAPIToken'] as String;
  }

  static String getRapidAPIHost() {
    return _config['rapidAPIHost'] as String;
  }

  static String getFootballAPIRootUrl() {
    return _config['footballAPIRootUrl'] as String;
  }
}
