//
//  TestarosaUITests.swift
//  TestarosaUITests
//
//  Created by Joe Blau on 2/8/18.
//  Copyright © 2018 Joe Blau. All rights reserved.
//

import XCTest
@testable import Testarosa

class TestarosaUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testButtonClicks() {
        XCUIApplication().buttons["Random Sum"].tap()


    }
    
}
