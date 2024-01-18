
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
class Palindrome {
  bool isPalindrome(int number) {
    int temp = number;
    int rev = 0;
    while (temp > 0) {
      int rem = temp % 10;
      rev = rev * 10 + rem;
      temp = temp ~/ 10;
    }
    return number == rev;
  }
}
class Armstrong {
  int countDigits(int number) {
    int count = 0;
    while (number != 0) {
      count++;
      number ~/= 10;
    }
    return count;
  }
  bool isArmstrongNumber(int number) {
    int originalNumber = number;
    int numberOfDigits = countDigits(number);
    int sum = 0;
    while (number > 0) {
      int digit = number % 10;
      sum += pow(digit, numberOfDigits).toInt();
      number ~/= 10;
    }
    return originalNumber == sum;
  }
}
class PalindromeArmstrongChecker extends StatefulWidget {
  @override
  _PalindromeArmstrongCheckerState createState() =>
      _PalindromeArmstrongCheckerState();
}
class _PalindromeArmstrongCheckerState
    extends State<PalindromeArmstrongChecker> {
  final List<int> numbers = [122, 121, 134, 371, 129];
  final Palindrome palindrome = Palindrome();
  final Armstrong armstrong = Armstrong();
  List<int> palindromeNumbers = [];
  List<int> armstrongNumbers = [];
  @override
  void initState() {
    super.initState();
    checkNumbers();
  }
  void checkNumbers() {
    for (int number in numbers) {
      if (palindrome.isPalindrome(number)) {
        palindromeNumbers.add(number);
      }
      if (armstrong.isArmstrongNumber(number)) {
        armstrongNumbers.add(number);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Palindrome & Armstrong Checker'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Palindrome Numbers:'),
                for (int number in palindromeNumbers)
                  Text(number.toString()),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Armstrong Numbers:'),
                for (int number in armstrongNumbers)
                  Text(number.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
void main() {
  runApp(PalindromeArmstrongChecker());
}
