num increment2(num param) => param + 1;

String toString(num param) => '"$param"';

String incrementAndToString(num param) => toString(increment(param));

/// Compose methods.
///
/// Function composition is the process of combining two or more functions to
/// create a new function. In mathematics, function composition is denoted with
/// a small circle (o) between the functions being composed. For example,
/// given two functions f and g, the composition of these two functions,
/// denoted as f o g, is a function that takes a single argument x and
/// applies g to it first, and then applies f to the result of g(x).
T3 Function(T1) compose<T1, T2, T3>(
  T2 Function(T1) f,
  T3 Function(T2) g,
) =>
    (T1 param) => g(f(param));

String incrementAndToString2(num param) => compose(increment, toString)(param);

/// Function currying.
///
/// Function currying is the technique of translating a function that takes
/// multiple arguments into a function that takes just a single argument and
/// returns another function if any arguments are still needed.
/// It is a way to partially apply arguments to a function, creating
/// a new function with a smaller number of arguments.
T normalSum<T extends num>(T param0, T param1) => param0 + param1 as T;

T Function(T) sum<T extends num>(T param) => (T param0) => param + param0 as T;
num Function(num) increment = sum(1);
num Function(num) decrement = sum(-1);
