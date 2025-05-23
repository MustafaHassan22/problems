class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }

    return [];
  }
}
// RunTime 73ms Beats 22.08%
 
//Memory 150.15MB Beats 48.03%

//Time Complexity: O(n²) because the algorithm checks nearly all pairs of elements.





