//
//  SortTextHelper.swift
//  arithmetic
//
//  Created by 每天农资 on 2017/12/18.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

import Foundation

class SortTextHelper {

    static func generateRandomArray(n: Int, rangL: Int, rangR: Int) -> [Int]? {
        
        guard n > 1 else {return nil}
        guard rangR > rangL else { return nil }
        
        
        var arr = [Int]()
        
        for _ in 0..<n {
            arr.append(Int(arc4random_uniform(UInt32(rangR - rangL))) + rangL)
        }
        
        return arr
    }

    static func generateNerlyOrderArray(n: Int, swapTimes: Int) -> [Int]? {
        
        guard n > 1 else {return nil}
        
        var arr = [Int]()
        
        for i in 0..<n {
            arr.append(i)
        }
        
        for _ in 0..<swapTimes {
            let posX = Int(arc4random_uniform(UInt32(n)))
            let posY = Int(arc4random_uniform(UInt32(n)))
            (arr[posX], arr[posY]) = (arr[posY], arr[posX])
        }
        return arr
    }
    
    static func sortTimeTest(title: String, array: [Int], function: ([Int]) -> ([Int])) {
        
        let startTime = Date()
        
        _ = function(array)
        
        let durationTime = Date().timeIntervalSince(startTime)
        
        print("\(title) : \(durationTime) S ")
    }
}

extension Array where Element == Int {
    func isSort() -> Bool {
        
        for i in 0..<self.count-1 {
            if self[i] > self[i+1] {
                return false
            }
        }
        return true
    }
}
