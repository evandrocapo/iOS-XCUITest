//
//  GymWorkoutUITests.swift
//  GymWorkoutUITests
//
//  Created by Daniela Ferreira da Cunha on 04/10/19.
//  Copyright © 2019 Adrian de Almeida. All rights reserved.
//

import XCTest

class BaseTests: XCTestCase {
let app = XCUIApplication()
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        app.terminate()
    }

}
