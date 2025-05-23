class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // Store numbers and their indices
    Map<int, int> map = {};

    for (int i = 0; i < nums.length; i++) {
      int remainder = target - nums[i];
      // If complement exists in map, we found a pair
      if (map.containsKey(remainder)) {
        return [i, map[remainder]!];
      }

      // Add current number and index to map
      map[nums[i]] = i;
    }
    return [];
  }
}
