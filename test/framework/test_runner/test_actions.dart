part of '../test_runner.dart';

mixin TestActions on TestDependencies {
  Future<void> render(WidgetTester tester) async {
    this.tester = tester;

    await tester.pumpWidget(App());
    await settle();
  }

  Future<void> settle() async {
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
  }
}
