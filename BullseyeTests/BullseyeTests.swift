//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Tianyu Zeng on 3/20/21.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }

    func testScorePositive() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let guess: Int = game.target+5
        XCTAssertEqual(game.points(sliderValue: guess), 95)
    }
    
    func testScoreNegative() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let guess: Int = game.target-5
        XCTAssertEqual(game.points(sliderValue: guess), 95)
    }
    
    func testScoreEqual() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let guess: Int = game.target
        XCTAssertEqual(game.points(sliderValue: guess), 100)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
