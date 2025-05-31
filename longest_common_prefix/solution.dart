class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return '';
    if (strs.length == 0) return strs[0];

    int minLegth = strs[0].length;
    for (String str in strs) {
      if (str.length < minLegth) minLegth = str.length;
    }
    StringBuffer prefix = StringBuffer();
    for (int i = 0; i < minLegth; i++) {
      String char = strs[0][i];
      for (int j = i; j < strs.length; j++) {
        if (strs[j][i] != char) {
          prefix.toString();
        }
      }
      prefix.write(char);
    }
    return prefix.toString();
  }
}
