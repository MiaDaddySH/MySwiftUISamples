//
//  DoublePoints.swift
//  MySwiftUISamples
//
//  Created by Yuangang Sheng on 09.07.21.
//

import Foundation

struct DoublePoints {

    // 1. 有序数组的 Two Sum
    func twoSum(input: [Int], target: Int) -> [Int]? {
        var i = 0, j = input.count - 1

        while i < j {
            let sum = input[i] + input[j]
            if sum == target {
                return [input[i], input[j]]
            } else if sum < target {
                i += 1
            } else {
                j -= 1
            }
        }

        return nil
    }

    // 2. 两数平方和
    /*
     Input: 5
     Output: True
     Explanation: 1 * 1 + 2 * 2 = 5
     */
    func judgeSquareSum(input: Int) -> Bool {
        var i = 0, j = Int(sqrt(Double(input)))

        while i < j {
            let sum = i*i + j*j
            if sum == input {
                return true
            } else if sum < input {
                i += 1
            } else {
                j -= 1
            }
        }

        return false
    }

    // 3. 反转字符串中的元音字符 Reverse Vowels of a String (Easy)Given s = "leetcode", return "leotcede".
    func reverseVowels(input: String) -> String {
        let vowels: [Character] = ["a", "i", "o", "e", "u", "A", "I", "O", "E", "U"]
        var chars = Array(input)

        var i = 0, j = input.count - 1
        while i < j {
            let charFirst = chars[i]
            let charSecond = chars[j]
            if !vowels.contains(charFirst) {
                i += 1
            } else if !vowels.contains(charSecond) {
                j -= 1
            } else {
                chars[j] = charFirst
                chars[i] = charSecond
                i += 1
                j -= 1
            }
        }
        return String(chars)
    }

    // 4. 回文字符串 Valid Palindrome II (Easy)所谓的回文字符串，是指具有左右对称特点的字符串，例如 "abcba" 就是一个回文字符串。
    /*
     题目描述：可以删除一个字符，判断是否能构成回文字符串。
     Input: "abca"
     Output: True
     Explanation: You could delete the character 'c'.
     */

    func isPalindrome(_ input: String, _ start: Int, _ end: Int) -> Bool {
        var i = start
        var j = end
        let chars = Array(input)
        while i < j {
            if chars[i] != chars[j] {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }

    func validPalindrome(_ input: String) -> Bool {
        var i = 0
        var j = input.count - 1
        let chars = Array(input)
        while i < j {
            if chars[i] != chars[j] {
                return isPalindrome(input, i + 1, j) || isPalindrome(input, i, j - 1)
            }
            i += 1
            j -= 1
        }
        return true
    }

    // 5. 归并两个有序数组 Merge Sorted Array (Easy)
    /*
     题目描述：把归并结果存到第一个数组上。
     Input:
     nums1 = [1,2,3,0,0,0], m = 3
     nums2 = [2,5,6],       n = 3

     Output: [1,2,2,3,5,6]
     */

    func merge(_ nums1: [Int], _ m: Int, _ nums2: [Int], _ n: Int) -> [Int] {
        var result = nums1
        var index1 = m - 1
        var index2 = n - 1
        var mergeIndex = m + n - 1
        while index2 >= 0 {
            if index1 < 0 || nums2[index2] >= nums1[index1] {
                result[mergeIndex] = nums2[index2]
                mergeIndex -= 1
                index2 -= 1
            } else {
                result[mergeIndex] = nums1[index1]
                mergeIndex -= 1
                index1 -= 1
            }
        }
        return result
    }

    // 6. 判断链表是否存在环
    /* 使用双指针，一个指针每次移动一个节点，一个指针每次移动两个节点，如果存在环，那么这两个指针一定会相遇。 */

    // 7. 最长子序列 Longest Word in Dictionary through Deleting (Medium)
    /*
     Input:
     s = "abpcplea", dictionary = ["ale","apple","monkey","plea"]

     Output:
     "apple"

     题目描述：删除 s 中的一些字符，使得它构成字符串列表 d 中的一个字符串，找出能构成的最长字符串。如果有多个相同长度的结果，返回字典序的最小字符串。

     通过删除字符串 s 中的一个字符能得到字符串 t，可以认为 t 是 s 的子序列，我们可以使用双指针来判断一个字符串是否为另一个字符串的子序列。
     */

    func isContained(_ source: String, _ target: String) -> Bool {
        var i = source.count - 1
        var j = target.count - 1

        while j >= 0 {
            if i < 0 { return false }
            if Array(target)[j] != Array(source)[i] {
                i -= 1
            } else {
                i -= 1
                j -= 1
            }
        }
        return true
    }

    func findLongestWord(_ s: String, _ dictionary: [String]) -> String {
        var longestWord = ""
        for word in dictionary {
            if isContained(s, word),
               word.count > longestWord.count ||
               (word.count == longestWord.count && word.compare(longestWord) == ComparisonResult.orderedAscending)
            {
                longestWord = word
            }
        }
        return longestWord
    }
}
