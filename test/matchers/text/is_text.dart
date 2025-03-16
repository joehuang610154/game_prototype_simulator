import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class _IsTextMatcher extends Matcher {
  final String expected;

  _IsTextMatcher(this.expected);

  @override
  bool matches(dynamic item, Map matchState) {
    if (item is Finder) {
      final textWidgets = item
          .evaluate()
          .where((e) => e.widget is Text)
          .map<Text>((e) => e.widget as Text)
          .toList();
      if (textWidgets.length != 1) {
        return false;
      }
      return textWidgets.first.data == expected;
    }
    return false;
  }

  @override
  Description describe(Description description) =>
      description.add("Widget should be Text with text: '$expected'");
}

Matcher isText(String text) => _IsTextMatcher(text);
