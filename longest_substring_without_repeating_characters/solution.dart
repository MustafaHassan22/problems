class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> charIndex = {};
    int start = 0;
    int maxLegth = 0;
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      if (charIndex.containsKey(char) && charIndex[char]! >= start) {
        start = charIndex[char]! + 1;
      }
      charIndex[char] = i;
      maxLegth = maxLegth > (i - start + 1) ? maxLegth : (i - start + 1);
    }
    return maxLegth;
  }
}
