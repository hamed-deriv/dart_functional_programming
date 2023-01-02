num increment(num param) => param + 1;

String toString(num param) => '"$param"';

String incrementAndToString(num param) => toString(increment(param));
