import '../../../framework/test_runner.dart';

class HomeScreenTestRunner extends TestRunner {
  HomeScreenTestRunner();

  @override
  void runTests() {
    testWidgets('home screen ...', (tester) async {
      await render(tester);
    });
  }
}

void main() => HomeScreenTestRunner();
