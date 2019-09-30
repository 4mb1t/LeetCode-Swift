//Question Link: https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }
        
        var tempArr: [Character] = []
        let dict: [Character: Character] = [")": "(",
                                            "}": "{",
                                            "]": "["]
        
        for char in s{
            switch char {
            case "(", "{", "[":
                tempArr.append(char)
                break
            default:
                guard dict[char] == tempArr.popLast() else {
                    return false
                }
            }
        }
        return tempArr.isEmpty
    }
}
