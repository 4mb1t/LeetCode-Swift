//Question Link: https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for (i, v) in zip(0..., nums) {
            if let index = dict[v]{
                return [index, i]
            }
            dict[target-v] = i
        }
        return [-1, -1]
    }
}
