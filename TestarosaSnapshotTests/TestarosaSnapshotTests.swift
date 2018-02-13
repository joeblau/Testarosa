//
//  TestarosaSnapshotTests.swift
//  TestarosaSnapshotTests
//
//  Created by Joe Blau on 2/8/18.
//  Copyright © 2018 Joe Blau. All rights reserved.
//

import XCTest
import FBSnapshotTestCase

@testable import Testarosa

class TestarosaSnapshotTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
//        self.recordMode = true
    }
    
    func testRandomSum_init() {
        let mockVC = ViewController()
        FBSnapshotVerifyView(mockVC.view)
    }
    
    func testRandomSum_populated() {
        let mockVC = ViewController()
        mockVC.sumLabel.text = "1234"
        FBSnapshotVerifyView(mockVC.view)
    }
}
