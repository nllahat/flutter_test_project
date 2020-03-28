import 'package:flutter/material.dart';

// clients will implement this class to provide a wrapped route.
abstract class PageWrapper {
  Widget get wrappedPage;
}
