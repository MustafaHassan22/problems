class Solution {
  int strStr(String haystack, String needle) {
    if (needle.isEmpty) return 0;
    if (needle.length > haystack.length) return -1;

    for (int i = 0; i <= haystack.length - needle.length; i++) {
      if (haystack.substring(i, i + needle.length) == needle) {
        return i;
      }
    }
    return -1;
  }
}





/* 
Input: haystack = "sadbutsad", needle = "sad"
Output: 0
Explanation: "sad" occurs at index 0 and 6.
The first occurrence is at index 0, so we return 0.
Example 2:

Input: haystack = "leetcode", needle = "leeto"
Output: -1
Explanation: "leeto" did not occur in "leetcode", so we return -1. 
*/