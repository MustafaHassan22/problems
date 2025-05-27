class Solution {
  int romanToInt(String s) {
    Map<String, int> map = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    int result = 0;
    int prevVla = 0; // Track the previous value seen (right to left)
    // Iterate from right to left
    for (int i = s.length - 1; i > 0; i--) {
      int currentValue = map[s[i]]!;
      if (currentValue < prevVla) {
        result -= currentValue;
      } else {
        result += currentValue;
      }
      prevVla = currentValue; // Update previous value for next iteration
    }
    return result;
  }
}
