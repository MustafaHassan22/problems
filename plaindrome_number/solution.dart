class Solution {
  bool isPalindrome(int x) {
    // Negative numbers are not palindromes
    if (x < 0) {
      return false;
    }
    // Single-digit numbers and zero are palindromes
    if (x < 10) {
      return true;
    }
    int reverse = 0;
    int temp = x;
    while (temp > 0) {
      int lastDigit = temp % 10;
      reverse = reverse * 10 + lastDigit;
      temp ~/= 10;
    }
    return reverse == x;
  }
}
