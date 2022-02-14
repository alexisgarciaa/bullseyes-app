//
//  bullseyes_gameTests.swift
//  bullseyes gameTests
//
//  Created by Alexis on 12/2/22.
//

import XCTest
//We nee to import bullseyesapp
@testable import bullseyes_game

class bullseyes_gameTests: XCTestCase {
    var game: Game!

    override func setUpWithError() throws {
      game = Game()
    }

    override func tearDownWithError() throws {
      game = nil
    }

    func  testScorePositive() -> Void {
        let guess = game.target + 5
        let score = game.Point(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    func  testScoreNegative() -> Void {
        let guess = game.target - 5
        let score = game.Point(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    

}
