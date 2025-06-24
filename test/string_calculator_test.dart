import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/string_calculator.dart';

void main() {
  final calculator = StringCalculator();
  test("Empty String return 0", () {
    expect(calculator.add(""), 0);
  });

  test("Single number return", () {
    expect(calculator.add("3"), 3);
  });
  
  test("Two number comma separated", () {
    expect(calculator.add("1,5"), 6);
  });

  test("Multiple number", (){
    expect(calculator.add("1,5,6"), 12);
  });

  test("Handle newline between numbers", (){
    expect(calculator.add("1\n2,3"), 6);
  });
}
