part of '../test_runner.dart';

mixin TestActions on TestDependencies {
  Future<void> render(WidgetTester tester) async {
    this.tester = tester;

    await tester.pumpWidget(App());
    await settle();
  }

  Future<void> tap(FinderBase<Element> finder) async {
    await tester.tap(finder);
    await settle();
  }

  Future<void> enter(Key formFieldKey, String text) async {
    await tester.enterText(find.byKey(formFieldKey), text);
    await settle();
  }

  Future<void> settle() async {
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
  }
}
