//
//  okasaki2006_swiftTests.swift
//  okasaki2006-swiftTests
//
//  Created by Chris Johnson Bidler on 3/22/15.
//  Copyright (c) 2015 Helper Monkey Software LLC. All rights reserved.
//

import UIKit
import XCTest

class okasaki2006_swiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testChapter2() {
        let ch2 = Chapter2()
        let exercise1_expected: [[Int]] = [[1, 2, 3, 4], [2, 3, 4], [3, 4], [4], []]
        var exercise1_actual:[[Int]] = [[Int]]()
        ch2.suffixes(&exercise1_actual, list: [1, 2, 3, 4])
        XCTAssertEqual(exercise1_expected.count, exercise1_actual.count, "Should be same length")
        for(index, _) in enumerate(exercise1_expected) {
            XCTAssertEqual(exercise1_actual[index], exercise1_expected[index], "Should have same contents")
        }
        
        
    }
    
}
