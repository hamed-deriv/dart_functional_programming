num increment(num param) => param + 1;

String toString(num param) => '"$param"';

String incrementAndToString(num param) => toString(increment(param));

String Function(num) compose(num Function(num) f, String Function(num) g) =>
    (num x) => g(f(x));

String incrementAndToString2(num param) => compose(increment, toString)(param);
