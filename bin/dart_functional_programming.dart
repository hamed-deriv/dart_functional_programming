import 'package:dart_functional_programming/dart_functional_programming.dart';

void main(List<String> arguments) {
  print(increment2(100));
  print(toString(100));
  print(incrementAndToString(100));
  print(incrementAndToString2.call(100));

  print(sum(10)(2));
  print(increment(10));
  print(decrement(10));
}
