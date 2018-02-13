//
//  TestarosaTests.swift
//  TestarosaTests
//
//  Created by Joe Blau on 2/8/18.
//  Copyright © 2018 Joe Blau. All rights reserved.
//

import XCTest
@testable import Testarosa

class TestarosaTests: XCTestCase {
    
    var mockVC: ViewController!
    let largeDoubleArray = Array(0...10_000_000)
        .map{ number -> Double in
            return Double(number)
    }
    
    override func setUp() {
        super.setUp()
        mockVC = ViewController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGenerateRandomSum() {
        // TODO:
    }
    
    func testAddingNumbers() {
        let numbs: [Double] = [1.0,2.0,3.0]
        let result = mockVC.add(numbers: numbs)
        XCTAssertEqual(result, 6.0)
    }
    
    func testFastAddingNumbers() {
        let numbs: [Double] = [1.0,2.0,3.0]
        let result = mockVC.fastAdd(numbers: numbs)
        XCTAssertEqual(result, 6.0)
    }
    
    func testPerformanceAddingNumbers() {
        self.measure {
            _ = mockVC.add(numbers: largeDoubleArray)
        }
    }
    
    func testPerformanceFastAddingNumbers() {
        self.measure {
            _ = mockVC.fastAdd(numbers: largeDoubleArray)
        }
    }
    
}
