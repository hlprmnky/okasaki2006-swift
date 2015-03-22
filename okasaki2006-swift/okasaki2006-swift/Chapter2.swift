//
//  Chapter2.swift
//  okasaki2006-swift
//
//  Created by Chris Johnson Bidler on 3/22/15.
//  Copyright (c) 2015 Helper Monkey Software LLC. All rights reserved.
//

import Foundation

    extension Array {
        var decompose : (head: T, tail: [T])? {
            return (count > 0) ? (self[0], Array(self[1..<count])) : nil
        }
    }
class Chapter2 {
    
    // Exercise 2.1
    // Write a function 'suffixes' of type \alpha list -> \alpha list list
    // that takes in a list xs and returns a list of all the suffixes of xs
    // in decreasing order of length, for example: 
    // suffixes [1, 2, 3, 4] = [[1, 2, 3, 4], [2, 3, 4], [3, 4], [4], []]
    func suffixes(inout result:[[Int]], list:[Int]) -> [[Int]] {
        result.append(list)
        if let (head, tail) = list.decompose {
            return suffixes(&result, list: tail)
        } else {
            return result
        }
    }
}
