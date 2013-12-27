// Start tests for JUnit (Jenkins-CI).

library unicode_helper_tests_junit;

import 'package:junitconfiguration/junitconfiguration.dart';
import 'unicode_helper_tests.dart' as all_tests;

void main() {
  JUnitConfiguration.install();
  all_tests.main();
}