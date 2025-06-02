class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> bracket = {
      '(': ')',
      '{': '}',
      '[': ']',
    };

    for (String c in s.split('')) {
      if (bracket.containsKey(c)) {
        stack.add(c);
      } else if (bracket.containsValue(c)) {
        if (stack.isEmpty || bracket[stack.removeLast()] != c) {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}
