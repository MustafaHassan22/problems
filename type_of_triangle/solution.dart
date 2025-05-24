class Solution {
  String triangleType(List<int> nums) {
    int a = nums[0], b = nums[1], c = nums[2];
    // Check triangle inequality
    if (!(a + b > c && b + c > a && a + c > b)) {
      return 'None';
    }

    // Check triangle type
    if (a == b && b == c && a == c) {
      return 'equilateral';
    } else if (a == b || b == c || a == c) {
      return 'isosceles';
    } else {
      return 'scalene';
    }
  }
}
