import 'package:flutter/material.dart';

class OnboardPageModel {
  final String questionText;
  final Widget contentWidget;

  OnboardPageModel(this.questionText, {Widget contentWidget})
      : contentWidget = contentWidget ?? null;
}
