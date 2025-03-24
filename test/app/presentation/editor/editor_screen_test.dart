import '../../../doubles/home_screen_doubles.dart';
import '../../../framework/test_runner.dart';

class EditorScreenTestRunner extends TestRunner with HomeScreenDoubles {
  @override
  void runTests() {
    testWidgets('', (tester) async {});
  }
}

void main() => EditorScreenTestRunner();
