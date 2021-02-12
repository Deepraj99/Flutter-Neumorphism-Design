import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

String buttonCall(String input, int buttonID) {
  switch (buttonID) {
    case 1:
      return primeArray(input);
    case 3:
  }
}

bool isPrime(int n) {
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

String primeCheck(String input) {
  int n = int.parse(input);

  if (isPrime(n)) {
    return "True"; //${n} is a Prime Number
  } else {
    return "False";
  }
}

String primeArray(String input) {
  // final array = input.split(" ").map(int.parse).toList();
  final array = input.split(" ").toList(); //print(array);

  String result = "";

  array.forEach((element) {
    result += (primeCheck(element) + "\n");
  });
  return result;
}

String primeInRange(String input) {
  final array1 = input.split(" ").toList();
  List<Tuple2<int, int>> array;
  array1.forEach((element) {});
}
