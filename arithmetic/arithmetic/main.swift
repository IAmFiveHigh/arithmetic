//
//  main.swift
//  arithmetic
//
//  Created by 每天农资 on 2017/12/18.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

import Foundation

//冒泡排序
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

//选择排序
func selectSort(arr: [Int]) -> [Int] {
    
    let n = arr.count
    var array = arr
    for i in 0..<n {
        
        var minIndex = i
        var j = i
        while j < n {
            
            if array[j] < array[minIndex] {
                minIndex = j
            }
            j += 1
        }
        
        if i != minIndex {
            swap(&array[i], &array[minIndex])
        }
    }
    return array
}

//插入排序
func insertSort(arr: [Int]) -> [Int] {
    
    var array = [Int]()
    let n = arr.count
    
    for i in 0..<n {
        var j = i
        let b = arr[i]
        
        array.append(arr[i])
        while j>0 && array[j-1] > b {
            swap(&array[j], &array[j-1])
            j -= 1
        }
    }
    
    return array
}

//归并排序

var arr1 = SortTextHelper.generateRandomArray(n: 10000, rangL: 0, rangR: 10000)
if let arr1 = arr1 {
    SortTextHelper.sortTimeTest(title: "冒泡排序", array: arr1, function: bubbleSort)
    SortTextHelper.sortTimeTest(title: "选择排序", array: arr1, function: selectSort)
    SortTextHelper.sortTimeTest(title: "插入排序", array: arr1, function: insertSort)

}




