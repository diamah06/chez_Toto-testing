//
//  ChezTotoUITests.swift
//  ChezTotoUITests
//
//  Created by Mahdia Amriou on 23/11/2023.
//

import XCTest
@testable import ChezToto

final class ChezTotoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMenuButton() throws {
            // UI tests must launch the application that they test.
            let app = XCUIApplication()
            app.launch()

            // Find the menu button by its accessibility identifier
        let menuButton = app.buttons["Accéder au menu"]

            // Verify that the button exists and is enabled
            XCTAssertNotNil(menuButton)
        
            menuButton.tap()

            // Verify that the navigation link has been triggered
            let menuView = app.otherElements["MenuView"].children(matching: .other).element
            XCTAssertNotNil(menuView)

            // Verify that the menu view is displayed
            let menuTitle = app.otherElements["MenuView"].staticTexts["Menu"].firstMatch
            XCTAssertNotNil(menuTitle)
          
        }
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
