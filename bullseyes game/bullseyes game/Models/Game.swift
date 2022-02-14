//
//  Game.swift
//  bullseyes game
//
//  Created by Alexis on 12/2/22.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round:Int = 1
    
    func Point(sliderValue: Int) -> Int {
        let difference: Int = abs(target - sliderValue)
        
        let awarePoints: Int = 100 - difference
        return awarePoints
    }
}
