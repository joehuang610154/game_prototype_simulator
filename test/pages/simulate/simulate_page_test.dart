import '../../framework/test_runner.dart';

class SimulatePageTest extends TestRunner {
  @override
  void runTests() {
    testWidgets("add a new game object", (tester) async {
      uuidUtil.setGenerateUuids(["1"]);

      await render(tester);
    });
  }
}

void main() => SimulatePageTest();
