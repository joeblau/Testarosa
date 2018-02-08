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
    
    let mockVC = ViewController()
    let largeDoubleArray = Array(0...1_000_000)
        .map{ number -> Double in
            return Double(number)
    }
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGenerateRandomSum() {
        // TODO:
    }
    
    func testAddingNumbers() {
        // TODO:
    }
    
    func testFastAddingNumbers() {
        // TODO:
    }
    
    func testPerformanceAddingNumbers() {
        self.measure {
            // TODO:
        }
    }
    
    func testPerformanceFastAddingNumbers() {
        self.measure {
            // TODO:
        }
    }
    
}
