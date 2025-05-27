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
    for (int i = 0; i < s.length; i++) {
      int currentValue = map[s[i]]!;
      if (i < s.length - 1 && currentValue < map[s[i + 1]]!) {
        result -= currentValue;
      } else {
        result += currentValue;
      }
    }
    return result;
  }
}
