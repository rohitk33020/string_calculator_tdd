import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/string_calculator.dart';

void main() {
  final calculator = StringCalculator();
  test("Empty String return 0", () {
    expect(calculator.add(""), 0);
  });
}
