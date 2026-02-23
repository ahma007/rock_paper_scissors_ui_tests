//
//  _0_1_RockPaperScissorsUITests.swift
//  20_1 RockPaperScissorsUITests
//
//  Created by Dzyubin Danila on 27/05/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import XCTest

class BaseTestCase: XCTestCase {

    let app = XCUIApplication()
    var steps: Steps!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        steps = Steps(app: app, base: self)
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
    }

}
