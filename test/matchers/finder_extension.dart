import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension FinderExtension on Finder {
  Text asText() => evaluate().first.widget as Text;
}
