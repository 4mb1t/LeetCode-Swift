//Question Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var start = 0
        var maxLength = 0
        var used: [Character: Int] = [:]
        for (i, c) in zip(0..., s) {
            if used.keys.contains(c) && used[c]! >= start {
                start = used[c]! + 1
            }
            else{
                maxLength = max(maxLength, i - start + 1)
            }
            used[c] = i
        }
        return maxLength
    }
}
