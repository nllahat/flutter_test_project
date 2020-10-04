import 'dart:ui';

import 'package:flutter/material.dart';

class OnboardPageModel {
  final Color primeColor;
  final Color accentColor;
  final Color nextAccentColor;
  final int pageNumber;
  final String imagePath;
  final String caption;
  final String subhead;
  final String description;
  final String questionText;
  final Widget contentWidget;

  OnboardPageModel(
      this.primeColor,
      this.accentColor,
      this.nextAccentColor,
      this.pageNumber,
      this.imagePath,
      this.caption,
      this.subhead,
      this.description,
      this.questionText,
      {Widget contentWidget})
      : contentWidget = contentWidget ?? null;
}
