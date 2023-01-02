num increment(num param) => param + 1;

String toString(num param) => '"$param"';

String incrementAndToString(num param) => toString(increment(param));

T3 Function(T1) compose<T1, T2, T3>(
  T2 Function(T1) f,
  T3 Function(T2) g,
) =>
    (T1 x) => g(f(x));

String incrementAndToString2(num param) => compose(increment, toString)(param);
