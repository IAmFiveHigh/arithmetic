//
//  main.swift
//  arithmetic
//
//  Created by 每天农资 on 2017/12/18.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

import Foundation

print("Hello, World!")

var arr1 = SortTextHelper.generateRandomArray(n: 10000, rangL: 0, rangR: 10000)

func bubbleSort(arr: [Int]) -> [Int] {
    
    let n = arr.count
    var array = arr
    for i in 0..<n {
        var j = 0
        
        while j < n - i - 1 {
            if array[j] > array[j+1] {
                swap(&array[j], &array[j+1])
            }
            j += 1
        }
    }
    return array
}

if let arr1 = arr1 {
    SortTextHelper.sortTimeTest(title: "冒泡排序", array: arr1, function: bubbleSort)
    
}
