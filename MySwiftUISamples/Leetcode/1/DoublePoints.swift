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
    
    //2. 两数平方和
    /*
     Input: 5
     Output: True
     Explanation: 1 * 1 + 2 * 2 = 5
     */
    func judgeSquareSum(input:Int) -> Bool{
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
}
