import 'package:flutter_test/flutter_test.dart';

import '../finder_extension.dart';

class _IsTextMatcher extends Matcher {
  final String expected;

  _IsTextMatcher(this.expected);

  @override
  bool matches(dynamic item, Map matchState) {
    if (item is Finder) {
      return item.asText().data == expected;
    }
    return false;
  }

  @override
  Description describe(Description description) =>
      description.add("Widget should be Text with text: '$expected'");
}

Matcher isText(String text) => allOf(findsOne, _IsTextMatcher(text));
